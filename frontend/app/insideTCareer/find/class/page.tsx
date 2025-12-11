"use client";

import { useState, useEffect } from "react";
import Header from "@/components/insideHeader";

type ClassRec = {
  name: string;
  similarity: number;
  credits: number | null;
  semester: string | null;
  type: string | null;
};

export default function FindClass() {
  const [careers, setCareers] = useState<string[]>([]);
  const [search, setSearch] = useState("");
  const [selectedCareer, setSelectedCareer] = useState<string | null>(null);
  const [recommendations, setRecommendations] = useState<ClassRec[]>([]);
  const [allClasses, setAllClasses] = useState<any[]>([]);
  const [lastVector, setLastVector] = useState<number[] | null>(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  useEffect(() => {
    fetch("http://127.0.0.1:5001/api/careers")
      .then(r => r.json())
      .then(data => setCareers(data.map((x: any) => x.name)))
      .catch(() => setError("Cannot load careers"));
  }, []);

  useEffect(() => {
    fetch("http://127.0.0.1:5001/api/classes")
      .then(r => r.json())
      .then(data => setAllClasses(data))
      .catch(() => {});
  }, []);

  const filteredCareers = careers.filter(c =>
    c.toLowerCase().includes(search.toLowerCase())
  );

  const submit = async () => {
    if (!selectedCareer) return;
    setLoading(true);
    setError("");

    try {
      const res1 = await fetch("http://127.0.0.1:5001/api/student-embedding", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          classes: [], 
          skills: [selectedCareer], 
        }),
      });
      const data1 = await res1.json();
      setLastVector(data1.vector);

      const res2 = await fetch("http://127.0.0.1:5001/api/recommend/classes", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ vector: data1.vector }),
      });
      const data2 = await res2.json();

      setRecommendations(data2.results || []);
    } catch {
      setError("Recommendation failed");
    } finally {
      setLoading(false);
    }
  };

  const regenerate = async () => {
    if (!lastVector) return;
    setLoading(true);

    const noise = lastVector.map(
      v => v + (Math.random() - 0.5) * 0.0002
    );

    try {
      const res2 = await fetch("http://127.0.0.1:5001/api/recommend/classes", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ vector: noise }),
      });
      const data2 = await res2.json();

      setRecommendations(data2.results || []);
    } catch {
      setError("Regeneration failed");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="bg-find bg-cover bg-center min-h-screen text-[#0C1B33]">
      <Header />

      <div className="text-center pt-16">
        <h1 className="text-5xl font-bold mb-4">Find Your Class</h1>
        <p className="text-lg text-gray-700">
          Don't guess your electives. Match your study plan directly to the technical requirements of your dream job.
        </p>
      </div>

      <div className="max-w-6xl mx-auto mt-16 flex">

        <div className="w-1/2 pr-10">
          <h2 className="text-2xl font-semibold mb-2">Select Career:</h2>
          <p className="text-gray-600 mb-4">
            Select one target career to identify the specific courses required.
          </p>

          <div className="bg-white rounded-2xl shadow-md p-4 max-h-96 flex flex-col">

            <input
              type="text"
              placeholder="Search career..."
              className="w-full px-4 py-2 mb-4 border border-gray-300 rounded-xl"
              value={search}
              onChange={e => setSearch(e.target.value)}
            />

            <div className="flex-1 overflow-y-auto">
              {filteredCareers.length === 0 ? (
                <p className="text-gray-500 text-sm text-center py-4">
                  No career found
                </p>
              ) : (
                filteredCareers.map((name, index) => (
                  <label
                    key={name + index}
                    className="flex items-center gap-2 py-2 cursor-pointer"
                    onClick={() => setSelectedCareer(name)}
                  >
                    <input
                      type="checkbox"
                      name="career"
                      checked={selectedCareer === name}
                      className="accent-blue-600"
                      readOnly
                    />
                    <span>{name}</span>
                  </label>
                ))
              )}
            </div>

          </div>
        </div>

        <div className="w-px bg-gray-300 mx-6" />

        <div className="w-1/2 pl-10">
          <h2 className="text-2xl font-semibold mb-2">Class Option:</h2>
          <p className="text-gray-600 mb-4">
            6 recommended courses to build essential skills.
          </p>

          {loading && <p>Loading...</p>}
          {error && <p className="text-red-500">{error}</p>} 

          <div className="grid grid-cols-2 gap-6">
            {recommendations.map((cls, index) => { 
              const full = allClasses.find(c => c.name === cls.name);
              
              return (
                <div 
                  key={`${cls.name}-${index}`} 
                  className="bg-white rounded-2xl shadow p-4"
                >
                  <h3 className="text-lg font-semibold">{cls.name}</h3>

                  <p className="text-sm text-gray-500">
                    <strong>Credit:</strong> {cls.credits}
                  </p>

                  <p className="text-sm text-gray-500">
                    <strong>Status:</strong> {cls.type}
                  </p>

                  <p className="text-sm text-gray-500 mb-2">
                    <strong>Pre-requisites:</strong>{" "}
                    {full?.prerequisites?.length ? full.prerequisites.join(", ") : "-"}
                  </p>

                  <div className="flex gap-2 flex-wrap">
                    {(full?.skills || []).slice(0, 3).map((s: string) => (
                      <span key={s} className="text-xs bg-blue-100 text-blue-700 rounded-full px-2 py-1">
                        {s}
                      </span>
                    ))}
                  </div>
                </div>
              );
            })}
          </div>

        </div>

      </div>

      <div className="mt-10 flex justify-center gap-6">
        <button
          onClick={submit}
          className="bg-blue-600 text-white px-10 py-3 rounded-full font-semibold hover:bg-blue-700 disabled:opacity-50"
          disabled={!selectedCareer || loading} 
        >
          {loading && !lastVector ? 'Searching...' : 'Submit'}
        </button>

        <button
          onClick={regenerate}
          className="border border-blue-600 text-blue-600 px-10 py-3 rounded-full font-semibold hover:bg-blue-50 disabled:opacity-50"
          disabled={!lastVector || loading} 
        >
          {loading && lastVector ? 'Regenerating...' : 'Re-Generate ↻'}
        </button>
      </div>
    </div>
  );
}
