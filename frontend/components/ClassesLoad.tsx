"use client";

import { useState, useMemo, useCallback, useEffect } from 'react';

interface CourseClass { 
  name: string;
  semester: string;
  credits: number;
  type: 'mandatory' | 'elective'; 
}

const CLASSES_API_URL = 'http://127.0.0.1:5001/api/classes'; 

const classItemStyle =
  "flex items-center p-3 border-b border-gray-100 hover:bg-blue-50 cursor-pointer transition-colors duration-150";
const checkboxStyle =
  "h-5 w-5 text-[#0950C2] focus:ring-[#0950C2] border-gray-300 rounded";


type ClassTypeFilter = 'all' | 'mandatory' | 'elective';

export default function MandatoryClassesCard({ onChange }: { onChange: (c: string[]) => void }) {
  const [mandatoryClasses, setMandatoryClasses] = useState<CourseClass[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [semesterFilter, setSemesterFilter] = useState('all');
  const [typeFilter, setTypeFilter] = useState<ClassTypeFilter>('all'); 
  const [selectedClasses, setSelectedClasses] = useState<string[]>(['Teori Graf']); 


  useEffect(() => {
    async function fetchClasses() {
      try {
        const response = await fetch(CLASSES_API_URL); 
        if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);

        const data: CourseClass[] = await response.json(); 
        setMandatoryClasses(data);
      } catch (error) {
        console.error("Could not fetch classes:", error);
      } finally {
        setIsLoading(false);
      }
    }

    fetchClasses();
  }, []);

  const filteredClasses = useMemo(() => {
    if (!mandatoryClasses.length) return [];

    return mandatoryClasses.filter(cls => {
      const name = cls.name?.toLowerCase() || "";
      const semester = cls.semester?.toLowerCase() || ""; 
      const classType = cls.type?.toLowerCase() || ""; 

      const matchesSearch = name.includes(searchTerm.toLowerCase());
      const matchesSemester =
        semesterFilter === 'all' ||
        semester === semesterFilter.toLowerCase();
      
      const matchesType = 
        typeFilter === 'all' ||
        classType === typeFilter.toLowerCase();


      return matchesSearch && matchesSemester && matchesType;
    });
  }, [mandatoryClasses, searchTerm, semesterFilter, typeFilter]);

 const handleToggleClass = useCallback((className: string) => {
  setSelectedClasses(prev =>
    prev.includes(className)
      ? prev.filter(name => name !== className)
      : [...prev, className]
  );
}, []);

useEffect(() => {
  onChange(selectedClasses); 
}, [selectedClasses, onChange]);




  const handleSelectAll = () => {
    const currentFiltered = filteredClasses.map(cls => cls.name);
    const allChecked = currentFiltered.every(name => selectedClasses.includes(name));

    if (allChecked) {
      setSelectedClasses(prev => prev.filter(n => !currentFiltered.includes(n)));
    } else {
      setSelectedClasses(prev => Array.from(new Set([...prev, ...currentFiltered])));
    }
  };

  const isSelectAllChecked = filteredClasses.length > 0 &&
    filteredClasses.every(cls => selectedClasses.includes(cls.name));

  return (
    <>
    <div className="mt-4 p-6 bg-white rounded-xl w-full max-w-8xl mx-auto">
     
      {/* Search + Filters Container */}
      <div className="flex flex-col sm:flex-row justify-between items-center mb-4 space-y-3 sm:space-y-0">
        <input
          type="text"
          placeholder="Search Class Name..."
          value={searchTerm}
          onChange={(e) => setSearchTerm(e.target.value)}
          className="p-2 border border-gray-300 rounded-lg w-full sm:w-1/3 focus:ring-[#0950C2] focus:border-[#0950C2]"
        />

        {/* Type Filter Buttons */}
        <div className="flex space-x-2 text-sm w-full sm:w-auto justify-center">
            {['all', 'mandatory', 'elective'].map((type) => (
                <button
                    key={type}
                    onClick={() => setTypeFilter(type as ClassTypeFilter)}
                    className={`px-4 py-2 rounded-full font-medium transition-colors duration-200 capitalize ${
                        typeFilter === type
                            ? 'bg-[#0950C2] text-white'
                            : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
                    }`}
                >
                    {type === 'all' ? 'All' : type}
                </button>
            ))}
        </div>
        {/* Semester Filter Buttons */}
        <div className="flex space-x-2 text-sm w-full sm:w-auto justify-end">
          {['all', 'odd', 'even'].map((sem) => (
            <button
              key={sem}
              onClick={() => setSemesterFilter(sem)}
              className={`px-4 py-2 rounded-full font-medium transition-colors duration-200 capitalize ${
                semesterFilter === sem
                  ? 'bg-[#0950C2] text-white shadow-md'
                  : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
              }`}
            >
              {sem === 'all' ? 'All Semesters' : `${sem} Sem`}
            </button>
          ))}
        </div>
      </div>

      {/* Select All */}
      {(searchTerm || semesterFilter !== 'all' || typeFilter !== 'all') && filteredClasses.length > 0 && (
        <div className={classItemStyle}>
          <input
            type="checkbox"
            checked={isSelectAllChecked}
            onChange={handleSelectAll}
            className={checkboxStyle}
          />
          <span className="ml-3 font-bold text-gray-700">
            Select All ({filteredClasses.length} Classes)
          </span>
        </div>
      )}

      {/* Class List */}
      <div className="max-h-96 overflow-y-auto border border-gray-200 rounded-lg">
        {isLoading ? (
          <div className="p-4 text-center text-[#0950C2] font-medium">Loading classes...</div>
        ) : filteredClasses.length > 0 ? (
          filteredClasses.map((cls) => (
            <div
              key={cls.name}
              className={classItemStyle}
              onClick={() => handleToggleClass(cls.name)}
            >
              <input
                type="checkbox"
                checked={selectedClasses.includes(cls.name)}
                onClick={(e) => e.stopPropagation()}
                onChange={() => handleToggleClass(cls.name)}
                className={checkboxStyle}
              />

              <div className="ml-3 text-left">
                <p className="font-medium text-gray-900">{cls.name}</p>
                <p className="text-xs text-gray-500">
                  {cls.credits ?? 'N/A'} Credits — {cls.semester ?? 'N/A'} — <span className="font-bold capitalize">{cls.type}</span>
                </p>
              </div>

              {selectedClasses.includes(cls.name) && (
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
            No classes found matching your criteria.
          </div>
        )}
      </div>
    </div>
  
  </>
)}