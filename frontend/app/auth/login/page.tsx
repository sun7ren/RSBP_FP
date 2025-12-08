"use client";

import { useState, type FormEvent } from "react";
import { signInWithEmailAndPassword } from "firebase/auth";
import { db, auth } from "@/firebaseConfig";
import { doc, getDoc } from "firebase/firestore";
import { useRouter } from "next/navigation";
import Link from "next/link";

import Header from "@/components/header";

export default function Login() {
  const router = useRouter();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");

  const handleLogin = async (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setError("");

    try {
      const userCredentials = await signInWithEmailAndPassword(auth, email, password);
      const user = userCredentials.user;

      router.push("/insideTCareer/profile");
    } catch (err: any) {
      setError(err.message ?? "Login failed");
    }
  };

  return (
    <div className="bg-hero bg-cover bg-center min-h-screen">
      <Header />
      <div className="flex-grow flex items-center justify-center">
        <div className="w-full max-w-2xl p-10 bg-white border border-[#95A6D3] rounded-2xl shadow-sm mt-30
                        bg-white/50 backdrop-blur-sm">
          <main className="flex flex-col justify-center mt-8">

            <h1 className="text-3xl font-semibold text-center italic underline text-[#0C56BA]">
              Find Your Passion!
            </h1>

            <form
              onSubmit={handleLogin}
              className="flex flex-col gap-10 px-5 mt-10 w-full"
            >
              <input
                type="email"
                placeholder="Email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                className="bg-white border border-black border-2 rounded-2xl px-5 py-5 focus:outline-none focus:ring-2 focus:ring-[#0C56BA] text-lg"
                required
              />

              <input
                type="password"
                placeholder="Password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                className="bg-white border border-black border-2 rounded-2xl px-5 py-5 focus:outline-none focus:ring-2 focus:ring-[#0C56BA] text-lg"
                required
              />

              {error && <p className="text-red-500 text-center">{error}</p>}

              <button
                type="submit"
                className="bg-[#0C56BA] text-white font-semibold text-lg rounded-full py-4 w-full hover:bg-black transition-colors shadow-md"
              >
                Sign in
              </button>

              <p className="text-center text-gray-700">
                Don’t have an account?{" "}
                <Link href="/auth/registration" className="text-[#0C56BA] font-medium cursor-pointer hover:underline">
                  Sign up
                </Link>
              </p>
            </form>
          </main>
        </div>
      </div>
    </div>
  );
}