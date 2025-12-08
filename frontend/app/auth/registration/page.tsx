"use client";

import { useState, FormEvent } from "react";
import { useRouter } from "next/navigation";
import { createUserWithEmailAndPassword } from "firebase/auth";
import { auth, db } from "@/firebaseConfig";
import { doc, setDoc } from "firebase/firestore";
import Header from "@/components/header";
import Link from "next/link";

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
      <main className="lex-grow flex items-center justify-center">
        <div className="w-full max-w-2xl p-10 bg-white border border-[#95A6D3] rounded-2xl shadow-sm mt-10
                        bg-white/50 backdrop-blur-sm">
          <div className="lex flex-col justify-center mt-8">

            <h1 className="text-3xl font-semibold text-center italic underline text-[#0C56BA]">
              Find Your Passion!
            </h1>


            <form
              onSubmit={onSubmit}
              className="flex flex-col gap-10 px-5 mt-10 w-full max-w-2xl"
            >
              <input
                type="text"
                placeholder="Full Name"
                className="bg-white border border-black border-2 rounded-lg px-5 py-5 focus:outline-none focus:ring-2 focus:ring-[#0C56BA] text-lg"
                value={fullName}
                onChange={(e) => setFullName(e.target.value)}
                required
              />

              <input
                type="email"
                placeholder="Email"
                className="bg-white border border-black border-2 rounded-lg px-5 py-5 focus:outline-none focus:ring-2 focus:ring-[#0C56BA] text-lg"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
              />

              <input
                type="password"
                placeholder="Password"
                className="bg-white border border-black border-2 rounded-lg px-5 py-5 focus:outline-none focus:ring-2 focus:ring-[#0C56BA] text-lg"
                value={passwordOne}
                onChange={(e) => setPasswordOne(e.target.value)}
                required
              />

              <input
                type="password"
                placeholder="Confirm Password"
                className="bg-white border border-black border-2 rounded-lg px-5 py-5 focus:outline-none focus:ring-2 focus:ring-[#0C56BA] text-lg"
                value={passwordTwo}
                onChange={(e) => setPasswordTwo(e.target.value)}
                required
              />

              {error && <p className="text-red-500 text-center">{error}</p>}

              <button
                type="submit"
                className="bg-[#0C56BA] text-white font-semibold text-lg rounded-full px-11 py-5 w-full hover:bg-black transition-colors shadow-md"
              >
                Sign Up
              </button>

              <p className="text-center text-gray-700">
                Already have an account?{" "}
                <Link href="/auth/login" className="text-[#0C56BA] font-medium cursor-pointer hover:underline">
                  Sign in
                </Link>
              </p>

            </form>
          </div>
        </div>
      </main>
    </div>
  );
}