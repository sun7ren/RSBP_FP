"use client";

import Header from "@/components/insideHeader";
import Link from "next/link";
import Image from "next/image";
import { useState, useEffect } from "react";
import ClassesCard from "@/components/ClassesLoad";
import SkillsCard from "@/components/SkillsLoad";
import Footer from "@/components/Footer";
import { signOut, updateEmail } from "firebase/auth";
import { auth, db } from "@/firebaseConfig";
import { doc, getDoc, updateDoc } from "firebase/firestore";
import { useRouter } from "next/navigation";


export default function Home() {
  const router = useRouter();

  const [name, setName] = useState("");
  const [email, setEmail] = useState("");

  const [editName, setEditName] = useState("");
  const [editEmail, setEditEmail] = useState("");

  const [loading, setLoading] = useState(false);
  const [selectedClasses, setSelectedClasses] = useState<string[]>([]);
  const [selectedSkills, setSelectedSkills] = useState<string[]>([]);

  const [popupVisible, setPopupVisible] = useState(false);
  
  const handleSubmit = async () => {
  const response = await fetch("http://127.0.0.1:5000/api/submit-selection", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      classes: selectedClasses,
      skills: selectedSkills,
    }),
  });

  const embeddingFetch = await fetch("http://127.0.0.1:5000/api/student-embedding", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      classes: selectedClasses,
      skills: selectedSkills,
    }),
  });

  const data = await response.json();
  const embeddingResponse = await embeddingFetch.json();

  console.log("Submit Response:", data);
  console.log("Student Embedding:", embeddingResponse.vector);

  const user = auth.currentUser;
  if (user && embeddingResponse.vector) {
    await updateDoc(doc(db, "users", user.uid), {
      embedding: embeddingResponse.vector,
      embeddingCount: embeddingResponse.count_used,
      selectedClasses,
      selectedSkills
    });
  }

  setPopupVisible(true);
  setTimeout(() => setPopupVisible(false), 2000);
};


  useEffect(() => {
    const loadUser = async () => {
      const user = auth.currentUser;
      if (!user) return;

      const ref = doc(db, "users", user.uid);
      const snap = await getDoc(ref);

      if (snap.exists()) {
        const data = snap.data();
        const savedName = data.name || "";
        const savedEmail = data.email || user.email || "";

        setName(savedName);
        setEmail(savedEmail);

        setEditName(savedName);
        setEditEmail(savedEmail);
      }
    };

    loadUser();
  }, []);

  const handleUpdate = async () => {
    const user = auth.currentUser;
    if (!user) return;

    try {
      setLoading(true);

      const ref = doc(db, "users", user.uid);
      await updateDoc(ref, {
        name: editName,
        email: editEmail
      });

      if (editEmail !== user.email) {
        await updateEmail(user, editEmail);
      }

      setName(editName);
      setEmail(editEmail);

      alert("Profile updated!");

    } catch (error: any) {
      console.error(error);
      alert("Update failed: " + error.message);
    } finally {
      setLoading(false);
    }
  };

  const handleLogout = async () => {
    try {
      await signOut(auth);
      router.push("/");
    } catch (error) {
      console.error("Error signing out: ", error);
    }
  };

  

  return (
    <div className="bg-find bg-cover bg-center min-h-screen">
      <Header />
      <main className="text-center mx-25">
        <h1 className="mt-15 text-6xl font-semibold">Profile</h1>
        <p className="mt-5">Complete your profile to get the best experience on this</p>
        <p>website!</p>

        <div className="flex flex-row justify-between items-center mt-8">
          <div className="flex flex-row items-center">
            <Image
              src="/profile.png"
              alt="profile"
              width={80}
              height={50}
              className="grayscale"
            />
            <div className="flex flex-col text-left ml-5">
              <p className="font-semibold text-lg">{name || "Full Name"}</p>
              <p>{email || "email@example.com"}</p>
            </div>
          </div>

          <div className="text-center text-white font-bold">
            <button
              onClick={handleUpdate}
              className="px-10 bg-[#0950C2] py-2 border-[#0950C2] border-2 rounded-4xl mr-5"
            >
              {loading ? "Updating..." : "Update"}
            </button>

            <button
              onClick={handleLogout}
              className="px-10 py-2 border-2 border-[#0950C2] text-[#0950C2] rounded-4xl"
            >
              Logout
            </button>
          </div>
        </div>

        <div className="mt-6">
          <div className="flex flex-row justify-between">
            <div className="flex flex-col">
              <p className="text-left">Full Name</p>
              <input
                type="text"
                value={editName}
                placeholder="Your Full Name"
                onChange={(e) => setEditName(e.target.value)}
                className="bg-white rounded-lg w-170 px-5 py-3 mt-2"
              />
            </div>

            <div className="flex flex-col">
              <p className="text-left">Email</p>
              <input
                type="text"
                value={editEmail}
                placeholder="Your Email"
                onChange={(e) => setEditEmail(e.target.value)}
                className="bg-white rounded-lg w-170 px-5 py-3 mt-2"
              />
            </div>
          </div>
        </div>

        <div className="mt-5 space-y-3">
            <p className="text-left">Taken Classes</p>
            <ClassesCard onChange={setSelectedClasses} />
            <p className="text-left">Current Skills</p>
            <SkillsCard onChange={setSelectedSkills} />

            <button
                onClick={handleSubmit}
                className="bg-[#0950C2] text-white px-6 py-3 rounded-lg shadow"
            >
                Submit to Backend
            </button>
        </div>
      </main>

      <div className="mt-20">
        <Footer />
      </div>
      {popupVisible && (
        <div className="fixed top-5 right-5 bg-green-600 text-white px-4 py-2 rounded shadow-lg">
            Sent to backend!
        </div>
        )}
    </div>
  );
}
