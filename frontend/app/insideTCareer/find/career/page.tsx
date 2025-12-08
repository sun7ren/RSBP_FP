"use client";

import { useState, useEffect } from "react";
import Header from "@/components/insideHeader";
import { auth, db } from "@/firebaseConfig";
import { doc, getDoc } from "firebase/firestore";

type CareerRec = {
  name: string;
  similarity: number;
  skills: string[];
  description: string;
};

export default function FindCareer() {
  const [allClasses, setAllClasses] = useState<any[]>([]);
  const [profileClasses, setProfileClasses] = useState<string[]>([]); // past/current classes from profile
  const [selectedFutureClasses, setSelectedFutureClasses] = useState<string[]>([]);
  const [recommendedCareers, setRecommendedCareers] = useState<CareerRec[]>([]);
  const [search, setSearch] = useState("");
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  // Load all available classes
  useEffect(() => {
    fetch("http://127.0.0.1:5001/api/classes")
      .then(r => r.json())
      .then(data => setAllClasses(data))
      .catch(() => setError("Failed to load classes"));
  }, []);

  // Load past/current classes from profile stored in Firestore (if any)
  useEffect(() => {
    const loadProfileFromFirestore = async () => {
      const user = auth.currentUser;
      if (!user) return; // no user signed in

      try {
        const ref = doc(db, "users", user.uid);
        const snap = await getDoc(ref);
        if (!snap.exists()) return;

        const data = snap.data();
        // assume profile saved selectedClasses on user doc (adjust key if different)
        const savedClasses = data.selectedClasses || [];
        setProfileClasses(Array.isArray(savedClasses) ? savedClasses : []);
      } catch (e) {
        console.error("Failed to read profile classes from Firestore:", e);
      }
    };

    // try load after small delay in case auth not ready
    loadProfileFromFirestore();
  }, []);

  const toggleClassSelection = (name: string) => {
    setSelectedFutureClasses(prev =>
      prev.includes(name) ? prev.filter(c => c !== name) : [...prev, name]
    );
  };

  const filteredClasses = allClasses.filter(c =>
    c.name.toLowerCase().includes(search.toLowerCase())
  );

  const handleGenerate = async () => {
    setLoading(true);
    setError("");

    try {
      let vector: number[] | undefined;

      // CASE A: NO FUTURE CLASSES -> use stored embedding from Firestore
      if (selectedFutureClasses.length === 0) {
        const user = auth.currentUser;
        if (!user) {
          setError("You must be signed in to use your profile embedding.");
          setLoading(false);
          return;
        }

        const ref = doc(db, "users", user.uid);
        const snap = await getDoc(ref);

        if (!snap.exists()) {
          setError("No profile found in Firestore.");
          setLoading(false);
          return;
        }

        const data = snap.data() as any;
        if (!data.embedding || !Array.isArray(data.embedding)) {
          setError("No stored profile embedding found. Please run 'Submit to Backend' from Profile first.");
          setLoading(false);
          return;
        }

        vector = data.embedding as number[];
      }

      // CASE B: FUTURE CLASSES SELECTED -> compute averaged vector by posting to backend (existing flow)
      else {
        const allSelected = [...profileClasses, ...selectedFutureClasses];

        const res1 = await fetch("http://127.0.0.1:5001/api/student-embedding", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ classes: allSelected, skills: [] }),
        });

        if (!res1.ok) {
          const txt = await res1.text();
          console.error("student-embedding error:", txt);
          setError("Failed to compute combined student embedding.");
          setLoading(false);
          return;
        }

        const data1 = await res1.json();
        vector = data1.vector;
      }

      // Now run career recommendation kNN (same as before)
      if (!vector) {
        setError("Failed to obtain embedding vector.");
        setLoading(false);
        return;
      }

      const res2 = await fetch("http://127.0.0.1:5001/api/recommend/careers", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ vector }),
      });

      if (!res2.ok) {
        const txt = await res2.text();
        console.error("recommend/careers error:", txt);
        setError("Career recommendation failed.");
        setLoading(false);
        return;
      }

      const data2 = await res2.json();
      const mapped = (data2.results || []).map((c: any) => ({
        name: c.name,
        similarity: c.similarity,
        skills: c.skills || [],
        description: c.description || "",
      }));

      setRecommendedCareers(mapped);
    } catch (e) {
      console.error(e);
      setError("Recommendation failed.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="bg-find bg-cover bg-center min-h-screen text-[#0C1B33]">
      <Header />

      <div className="text-center pt-16">
        <h1 className="text-5xl font-bold mb-4">Find Your Career</h1>
        <p className="text-lg text-gray-700">
          Pick your future classes and see which professional roles unlock for you.
        </p>
      </div>

      <div className="max-w-6xl mx-auto mt-16 flex">

        {/* Future Classes Selection */}
        <div className="w-1/2 pr-10">
          <h2 className="text-2xl font-semibold mb-2">Select Future Classes:</h2>
          <p className="text-gray-600 mb-4">
            Choose classes you plan to take to see how they affect your career options.
          </p>

          <div className="bg-white rounded-2xl shadow-md p-4 max-h-96 flex flex-col">
            <input
              type="text"
              placeholder="Search classes..."
              className="w-full px-4 py-2 mb-4 border border-gray-300 rounded-xl"
              value={search}
              onChange={e => setSearch(e.target.value)}
            />

            <div className="flex-1 overflow-y-auto">
              {filteredClasses.length === 0 ? (
                <p className="text-gray-500 text-sm text-center py-4">
                  No classes found
                </p>
              ) : (
                filteredClasses.map((cls) => (
                  <label
                    key={cls.name}
                    className="flex items-center gap-2 py-2 cursor-pointer"
                    onClick={() => toggleClassSelection(cls.name)}
                  >
                    <input
                      type="checkbox"
                      checked={selectedFutureClasses.includes(cls.name)}
                      className="accent-blue-600"
                      readOnly
                    />
                    <span>{cls.name}</span>
                  </label>
                ))
              )}
            </div>
          </div>
        </div>

        <div className="w-px bg-gray-300 mx-6" />

        {/* Career Recommendations */}
        <div className="w-1/2 pl-10">
          <h2 className="text-2xl font-semibold mb-2">Recommended Careers:</h2>
          <p className="text-gray-600 mb-4">
            Based on your past, current, and future class selections.
          </p>

          {loading && <p>Loading...</p>}

          <div className="grid grid-cols-2 gap-6">
            {recommendedCareers.map((career, idx) => (
              <div
                key={`${career.name}-${idx}`}
                className="bg-white rounded-2xl shadow p-4"
              >
                <h3 className="text-lg font-semibold">{career.name}</h3>

                <p className="text-sm text-gray-500 mb-2">
                  <strong>Similarity:</strong> {(career.similarity * 100).toFixed(2)}%
                </p>

                <div className="flex gap-2 flex-wrap mt-2">
                  {(career.skills || []).slice(0, 3).map((skill) => (
                    <span
                      key={skill}
                      className="text-xs bg-blue-100 text-blue-700 rounded-full px-2 py-1"
                    >
                      {skill}
                    </span>
                  ))}
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>

      <div className="mt-10 flex justify-center gap-6">
        <button
          onClick={handleGenerate}
          className="bg-blue-600 text-white px-10 py-3 rounded-full font-semibold hover:bg-blue-700"
        >
          Generate
        </button>
      </div>

      {error && <p className="text-red-500 text-center mt-4">{error}</p>}
    </div>
  );
}
