"use client";

import { useState, FormEvent } from "react";
import { useRouter } from "next/navigation";
import { createUserWithEmailAndPassword } from "firebase/auth";
import { auth, db } from "@/firebaseConfig";
import { doc, setDoc } from "firebase/firestore";
import Header from "@/components/header";

export default function SignUp() {
  const router = useRouter();

  const [fullName, setFullName] = useState("");
  const [email, setEmail] = useState("");
  const [passwordOne, setPasswordOne] = useState("");
  const [passwordTwo, setPasswordTwo] = useState("");
  const [error, setError] = useState("");

  const onSubmit = async (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setError("");

    if (passwordOne !== passwordTwo) {
      setError("Passwords do not match");
      return;
    }

    try {
      const userCredential = await createUserWithEmailAndPassword(
        auth,
        email,
        passwordOne
      );

      const user = userCredential.user;
      await setDoc(doc(db, "users", user.uid), {
        name: fullName,
        email: email,
        createdAt: new Date(),
      });

      router.push("/insideTCareer/profile");
    } catch (err: any) {
      setError(err.message);
    }
  };

  return (
    <div className="bg-hero bg-cover bg-center min-h-screen">
      <Header />
      <main className="flex flex-col justify-center mt-8">
        <div className="w-1/2 flex flex-col align-center items-center">
          <form
            onSubmit={onSubmit}
            className="flex flex-col gap-10 px-20 mt-10 w-full max-w-2xl"
          >
            <input
              type="text"
              placeholder="Full Name"
              className="border border-black border-2 rounded-lg px-5 py-5 focus:outline-none focus:ring-2 focus:ring-[#0C56BA] text-lg"
              value={fullName}
              onChange={(e) => setFullName(e.target.value)}
              required
            />

            <input
              type="email"
              placeholder="Email"
              className="border border-black border-2 rounded-lg px-5 py-5 focus:outline-none focus:ring-2 focus:ring-[#0C56BA] text-lg"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              required
            />

            <input
              type="password"
              placeholder="Password"
              className="border border-black border-2 rounded-lg px-5 py-5 focus:outline-none focus:ring-2 focus:ring-[#0C56BA] text-lg"
              value={passwordOne}
              onChange={(e) => setPasswordOne(e.target.value)}
              required
            />

            <input
              type="password"
              placeholder="Confirm Password"
              className="border border-black border-2 rounded-lg px-5 py-5 focus:outline-none focus:ring-2 focus:ring-[#0C56BA] text-lg"
              value={passwordTwo}
              onChange={(e) => setPasswordTwo(e.target.value)}
              required
            />

            {error && <p className="text-red-500 text-center">{error}</p>}

            <button
              type="submit"
              className="bg-[#0C56BA] text-white font-semibold text-lg rounded-lg px-11 py-5 w-full hover:bg-black transition-colors shadow-md"
            >
              Sign Up
            </button>
          </form>
        </div>
      </main>
    </div>
  );
}
