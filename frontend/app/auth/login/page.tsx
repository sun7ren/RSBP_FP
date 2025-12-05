"use client";

import { useState, type FormEvent } from "react";
import { signInWithEmailAndPassword } from "firebase/auth";
import { db, auth } from "@/firebaseConfig";
import { doc, getDoc } from "firebase/firestore";
import { useRouter } from "next/navigation";

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
      <main className="flex flex-col justify-center mt-8">
        <form
          onSubmit={handleLogin}
          className="flex flex-col gap-10 px-20 mt-10 w-full max-w-2xl"
        >
          <input
            type="email"
            placeholder="Email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="border border-black border-2 rounded-lg px-5 py-5 focus:outline-none focus:ring-2 focus:ring-[#0C56BA] text-lg"
            required
          />

          <input
            type="password"
            placeholder="Password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            className="border border-black border-2 rounded-lg px-5 py-5 focus:outline-none focus:ring-2 focus:ring-[#0C56BA] text-lg"
            required
          />

          {error && <p className="text-red-500 text-center">{error}</p>}

          <button
            type="submit"
            className="bg-[#0C56BA] text-white font-semibold text-lg rounded-lg px-11 py-5 w-full hover:bg-black transition-colors shadow-md"
          >
            Login
          </button>
        </form>
      </main>
    </div>
  );
}
