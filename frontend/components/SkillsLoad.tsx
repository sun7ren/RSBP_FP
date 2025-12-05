"use client";

import { useState, useMemo, useCallback, useEffect } from 'react';

interface Skill {
  name: string;
  type: 'skill'; 
}


const SKILLS_API_URL = 'http://127.0.0.1:5000/api/skills'; 

const skillItemStyle =
  "flex items-center p-3 border-b border-gray-100 hover:bg-blue-50 cursor-pointer transition-colors duration-150";
const checkboxStyle =
  "h-5 w-5 text-[#0950C2] focus:ring-[#0950C2] border-gray-300 rounded";

export default function SkillsCard({ onChange }: { onChange: (s: string[]) => void }) {

  const [allSkills, setAllSkills] = useState<Skill[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [selectedSkills, setSelectedSkills] = useState<string[]>([]); 


  useEffect(() => {
    async function loadSkills() {
      try {
        const response = await fetch(SKILLS_API_URL);
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        
        const data: Skill[] = await response.json(); 
        setAllSkills(data);
      } catch (error) {
        console.error("Could not fetch skills:", error);
      } finally {
        setIsLoading(false);
      }
    }

    loadSkills();
  }, []);

  const filteredSkills = useMemo(() => {
    if (!allSkills.length) return [];

    return allSkills.filter(skill => {
      const name = skill.name?.toLowerCase() || "";
      return name.includes(searchTerm.toLowerCase());
    });
  }, [allSkills, searchTerm]);

  const handleToggleSkill = (skillName: string) => {
  setSelectedSkills(prev =>
    prev.includes(skillName)
      ? prev.filter(name => name !== skillName)
      : [...prev, skillName]
    );
    };

    useEffect(() => {
    onChange(selectedSkills);  
    }, [selectedSkills, onChange]);



  const handleSelectAll = () => {
    const currentFiltered = filteredSkills.map(skill => skill.name);
    const allChecked = currentFiltered.every(name => selectedSkills.includes(name));

    if (allChecked) {
      setSelectedSkills(prev => prev.filter(n => !currentFiltered.includes(n)));
    } else {
      setSelectedSkills(prev => Array.from(new Set([...prev, ...currentFiltered])));
    }
  };

  const isSelectAllChecked = filteredSkills.length > 0 &&
    filteredSkills.every(skill => selectedSkills.includes(skill.name));

  return (
    <>
    <div className="mt-4 p-6 bg-white rounded-xl w-full max-w-8xl mx-auto">
      <div className="flex justify-between items-center mb-4">
        <input
          type="text"
          placeholder="Search Skill Name..."
          value={searchTerm}
          onChange={(e) => setSearchTerm(e.target.value)}
          className="p-2 border border-gray-300 rounded-lg w-full focus:ring-[#0950C2] focus:border-[#0950C2]"
        />
      </div>

      {searchTerm && filteredSkills.length > 0 && (
        <div className={skillItemStyle}>
          <input
            type="checkbox"
            checked={isSelectAllChecked}
            onChange={handleSelectAll}
            className={checkboxStyle}
          />
          <span className="ml-3 font-bold text-gray-700">
            Select All ({filteredSkills.length} Skills)
          </span>
        </div>
      )}

      <div className="max-h-96 overflow-y-auto border border-gray-200 rounded-lg">
        {isLoading ? (
          <div className="p-4 text-center text-[#0950C2] font-medium">Loading skills...</div>
        ) : filteredSkills.length > 0 ? (
          filteredSkills.map((skill) => (
            <div
              key={skill.name}
              className={skillItemStyle}
              onClick={() => handleToggleSkill(skill.name)}
            >
              <input
                type="checkbox"
                checked={selectedSkills.includes(skill.name)}
                onClick={(e) => e.stopPropagation()}
                onChange={() => handleToggleSkill(skill.name)}
                className={checkboxStyle}
              />

              <div className="ml-3 text-left">
                <p className="font-medium text-gray-900">{skill.name}</p>
              </div>

              {selectedSkills.includes(skill.name) && (
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className="h-5 w-5 text-[#0950C2] ml-auto"
                  viewBox="0 0 20 20"
                  fill="currentColor"
                >
                  <path
                    fillRule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 13.586l7.293-7.293a1 1 0 011.414 0z"
                    clipRule="evenodd"
                  />
                </svg>
              )}
            </div>
          ))
        ) : (
          <div className="p-4 text-center text-gray-500">
            No skills found matching your criteria.
          </div>
        )}
      </div>
    </div>
  
    </>
  );
}
