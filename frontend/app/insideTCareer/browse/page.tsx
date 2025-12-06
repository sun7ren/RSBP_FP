"use client";

import { useEffect, useState, useMemo } from "react";
import Header from "@/components/insideHeader";

interface ClassData {
  name: string;
  credits: number;
  type: "mandatory" | "elective";
  semester: "odd" | "even";
  prerequisites: string[];
  skills: string[];
}

const API_URL = "http://127.0.0.1:5000/api/classes";

const TABS = [
  { id: "mandatory-odd", label: "Mandatory Odd Semester", type: "mandatory", sem: "odd" },
  { id: "mandatory-even", label: "Mandatory Even Semester", type: "mandatory", sem: "even" },
  { id: "elective-odd", label: "Elective Odd Semester", type: "elective", sem: "odd" },
  { id: "elective-even", label: "Elective Even Semester", type: "elective", sem: "even" },
];

export default function BrowseClassPage() {
  const [classes, setClasses] = useState<ClassData[]>([]);
  const [activeTab, setActiveTab] = useState<string>("mandatory-even");

  useEffect(() => {
    async function load() {
      try {
        const r = await fetch(API_URL);
        const json = await r.json();
        setClasses(json);
      } catch (err) {
        console.error(err);
      }
    }
    load();
  }, []);

  const filtered = useMemo(() => {
    const tab = TABS.find(t => t.id === activeTab);
    if (!tab) return [];
    return classes.filter(
      (c) => c.type === tab.type && c.semester === tab.sem
    );
  }, [activeTab, classes]);

  return (
    <div className="bg-find bg-cover bg-center min-h-screen text-[#0C1B33] pb-20">
      <Header />

      <div className="pt-20 text-center">
        <h1 className="text-5xl font-bold">Browse Class</h1>
        <p className="text-gray-600 mt-3 text-lg">
          Explore the complete curriculum. Discover course details,
          prerequisites, and the specific skills you will gain.
        </p>
      </div>

      <div className="flex justify-center mt-10 border-b border-gray-300">
        {TABS.map((tab) => (
          <button
            key={tab.id}
            onClick={() => setActiveTab(tab.id)}
            className={`px-6 py-3 text-sm font-medium transition-all
              ${activeTab === tab.id
                ? "text-[#0950C2] border-b-4 border-[#0950C2]"
                : "text-gray-600 hover:text-[#0950C2]"
              }
            `}
          >
            {tab.label}
          </button>
        ))}
      </div>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6 mt-10 w-[90%] mx-auto">
        {filtered.map((cls) => (
          <div
            key={cls.name}
            className="bg-white p-6 rounded-2xl shadow-md hover:shadow-lg transition"
          >
            <h2 className="text-xl font-semibold text-[#0E1E3C]">
              {cls.name}
            </h2>

            <p className="mt-2 text-sm text-gray-600">
              <strong>Credit:</strong> {cls.credits} SKS
            </p>
            <p className="text-sm text-gray-600">
              <strong>Status:</strong> {cls.type === "mandatory" ? "Mandatory" : "Elective"}
            </p>
            <p className="text-sm text-gray-600">
              <strong>Pre-requisites:</strong>{" "}
              {cls.prerequisites?.length ? cls.prerequisites.join(", ") : "None"}
            </p>

            <div className="mt-4">
              {cls.skills?.length ? (
                <div className="flex gap-2 flex-wrap">
                  {cls.skills.slice(0, 3).map((s, i) => (
                    <span
                      key={i}
                      className="text-xs bg-blue-100 text-blue-700 rounded-full px-3 py-1"
                    >
                      {s}
                    </span>
                  ))}
                </div>
              ) : (
                <span className="text-xs bg-blue-100 text-blue-700 rounded-full px-3 py-1">
                  No skills
                </span>
              )}
            </div>
          </div>
        ))}

        {filtered.length === 0 && (
          <div className="col-span-full text-center text-gray-500 py-10">
            No classes found for this category.
          </div>
        )}
      </div>
    </div>
  );
}
