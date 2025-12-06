//Mandatory Classes
// 1st Semester Classes
CREATE (:Class {Name: 'Calculus 1', Semester: 'odd', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Fundamental Programming', Semester: 'odd', Status: 'mandatory', Credits: 4});
CREATE (:Class {Name: 'Digital System', Semester: 'odd', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Linear Algebra', Semester: 'odd', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Database System', Semester: 'odd', Status: 'mandatory', Credits: 4});

// 2nd Semester Classes
CREATE (:Class {Name: 'Data Structure', Semester: 'even', Status: 'mandatory', Credits: 4});
CREATE (:Class {Name: 'Operating System', Semester: 'even', Status: 'mandatory', Credits: 4});
CREATE (:Class {Name: 'Computer Organization', Semester: 'even', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Numerical Computation', Semester: 'even', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Calculus 2', Semester: 'even', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Introduction to Intelligent Electrical and Informatics Technology', Semester: 'even', Status: 'mandatory', Credits: 2});

// 3rd Semester Classes
CREATE (:Class {Name: 'Web Programming', Semester: 'odd', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Object Oriented Programming', Semester: 'odd', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Computer Network', Semester: 'odd', Status: 'mandatory', Credits: 4});
CREATE (:Class {Name: 'Graph Theory', Semester: 'odd', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Discrete Mathematics', Semester: 'odd', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Artificial Intelligence Concepts', Semester: 'odd', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Software Development Principles', Semester: 'odd', Status: 'mandatory', Credits: 2});

// 4th Semester Classes
CREATE (:Class {Name: 'Network Programming', Semester: 'even', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Probabilistic and Statistic', Semester: 'even', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Automata', Semester: 'even', Status: 'mandatory', Credits: 2});
CREATE (:Class {Name: 'Database Management', Semester: 'even', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Algorithm Design and Analysis', Semester: 'even', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Machine Learning', Semester: 'even', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Software Design', Semester: 'even', Status: 'mandatory', Credits: 3});

// 5th Semester Classes
CREATE (:Class {Name: 'Framework-based Programming', Semester: 'odd', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Information Security', Semester: 'odd', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Modeling and Simulation', Semester: 'odd', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Computer Graphics', Semester: 'odd', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Knowledge based Engineering', Semester: 'odd', Status: 'mandatory', Credits: 3});

// 6th Semester Classes
CREATE (:Class {Name: 'English', Semester: 'even', Status: 'mandatory', Credits: 2});
CREATE (:Class {Name: 'Technopreneurship', Semester: 'even', Status: 'mandatory', Credits: 2});
CREATE (:Class {Name: 'Religion', Semester: 'even', Status: 'mandatory', Credits: 2});
CREATE (:Class {Name: 'Civics', Semester: 'even', Status: 'mandatory', Credits: 2});
CREATE (:Class {Name: 'Mobile Programming', Semester: 'even', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Human and Computer Interaction', Semester: 'even', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Capstone Project', Semester: 'even', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Practical Work', Semester: 'even', Status: 'mandatory', Credits: 4});

// 7th Semester Classes
CREATE (:Class {Name: 'Indonesian', Semester: 'odd', Status: 'mandatory', Credits: 2});
CREATE (:Class {Name: 'Pancasila', Semester: 'odd', Status: 'mandatory', Credits: 2});
CREATE (:Class {Name: 'Applied Technology and Digital Transformation', Semester: 'odd', Status: 'mandatory', Credits: 3});
CREATE (:Class {Name: 'Professional Ethics', Semester: 'odd', Status: 'mandatory', Credits: 2});
CREATE (:Class {Name: 'Underground Pre-Thesis', Semester: 'odd', Status: 'mandatory', Credits: 2});

// 8th Semester Classes
CREATE (:Class {Name: 'Final Project', Semester: 'even', Status: 'mandatory', Credits: 5});

// Elective Classes
// Odd Semester Electives
CREATE (:Class {Name: 'Data Mining', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Wireless Network', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Software Project Management', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Competitive Programming', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Image Processing and Computer Vision', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Requirement Engineering', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Research Operation', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Enterprise Systems', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Distributed Systems', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'IT Governance', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Game Development Techniques', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Network Technology', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Multivariate Data Analysis', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Software Architecture', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Big Data', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Software Evolution', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Digital Forensic', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Smart Game', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Cloud Computing', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Quantum Computing', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Internship', Semester: 'odd', Status: 'elective', Credits: 6});
CREATE (:Class {Name: 'Applied Data Science Programming', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Signal Processing', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'X Reality', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Robotics', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Object Oriented Simulation', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'IoT Technology', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Special Topics on Algorithm and Programming', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Special Topics on Computer Architecture and Networks', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Special Topics on Graphics, Interaction and Game', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Special Topics on Network Based Computation', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Special Topics on Intelligent Computation and Vision', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Special Topics on Information Intelligent Management', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Special Topics on Applied Computing and Modeling', Semester: 'odd', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Special Topics on Software Engineering', Semester: 'odd', Status: 'elective', Credits: 3});

// Even Semester Electives
CREATE (:Class {Name: 'Computer Animation and 3D Modeling', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'System Audit', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Distributed Database', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Deep Learning', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'User Experience Design', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Education and Simulation Games', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Game Engine', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Application Security', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Network Security', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Mobile Computing', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Pervasive Computing and sensor networks', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Software Construction', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Software Quality', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Interface Programming', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Agent-based Simulation', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Dynamic System Simulation', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Geographical Information Systems', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Forecasting Techniques', Semester: 'even', Status: 'elective', Credits: 3});
CREATE (:Class {Name: 'Text Mining', Semester: 'even', Status: 'elective', Credits: 3});

// Career
CREATE (:Career {Name: 'AI Ethics Consultant', Description: 'Ensure AI ethics'});
CREATE (:Career {Name: 'AI/ML Engineer', Description: 'Develop AI models'});
CREATE (:Career {Name: 'Blockchain Developer', Description: 'Develop blockchain'});
CREATE (:Career {Name: 'Business Analyst', Description: 'Analyze business needs'});
CREATE (:Career {Name: 'Cloud Architect', Description: 'Design cloud solutions'});
CREATE (:Career {Name: 'Cloud Migration Specialist', Description: 'Migrate to the cloud'});
CREATE (:Career {Name: 'Cloud Security Analyst', Description: 'Analyze cloud security'});
CREATE (:Career {Name: 'Cloud Security Engineer', Description: 'Secure cloud'});
CREATE (:Career {Name: 'Cloud Solutions Analyst', Description: 'Analyze cloud solutions'});
CREATE (:Career {Name: 'Cloud Solutions Architect', Description: 'Design cloud solutions'});
CREATE (:Career {Name: 'Cloud Support Engineer', Description: 'Support cloud'});
CREATE (:Career {Name: 'Cybersecurity Analyst', Description: 'Protect data, Secure IT systems, Ensure IT security'});
CREATE (:Career {Name: 'Cybersecurity Engineer', Description: 'Secure IT systems'});
CREATE (:Career {Name: 'Data Analyst', Description: 'Analyze data trends'});
CREATE (:Career {Name: 'Data Analytics Manager', Description: 'Manage data analytics'});
CREATE (:Career {Name: 'Data Engineer', Description: 'Build data pipelines'});
CREATE (:Career {Name: 'Data Governance Analyst', Description: 'Manage data governance'});
CREATE (:Career {Name: 'Data Privacy Officer', Description: 'Ensure data privacy'});
CREATE (:Career {Name: 'Data Scientist', Description: 'Analyze big data'});
CREATE (:Career {Name: 'Database Administrator', Description: 'Manage databases'});
CREATE (:Career {Name: 'Database Analyst', Description: 'Manage databases'});
CREATE (:Career {Name: 'DevOps Engineer', Description: 'Streamline devops'});
CREATE (:Career {Name: 'DevSecOps Engineer', Description: 'Secure DevOps pipeline'});
CREATE (:Career {Name: 'Front-end Developer', Description: 'Develop web interfaces'});
CREATE (:Career {Name: 'Full-stack Developer', Description: 'Develop full-stack apps and web applications'});
CREATE (:Career {Name: 'IT Analyst', Description: 'Analyze IT systems'});
CREATE (:Career {Name: 'IT Analyst Trainee', Description: 'Train as an IT analyst'});
CREATE (:Career {Name: 'IT Asset Manager', Description: 'Manage IT assets'});
CREATE (:Career {Name: 'IT Auditor', Description: 'Audit IT systems'});
CREATE (:Career {Name: 'IT Business Analyst', Description: 'Analyze IT needs'});
CREATE (:Career {Name: 'IT Business Continuity Manager', Description: 'Ensure business continuity'});
CREATE (:Career {Name: 'IT Change Manager', Description: 'Manage IT changes'});
CREATE (:Career {Name: 'IT Compliance Officer', Description: 'Ensure IT compliance'});
CREATE (:Career {Name: 'IT Consultant', Description: 'Provide IT consultancy'});
CREATE (:Career {Name: 'IT Governance Manager', Description: 'Manage IT governance'});
CREATE (:Career {Name: 'IT Helpdesk Support', Description: 'Provide IT support'});
CREATE (:Career {Name: 'IT Procurement Analyst', Description: 'Analyze IT procurement'});
CREATE (:Career {Name: 'IT Procurement Coordinator', Description: 'Coordinate IT procurement'});
CREATE (:Career {Name: 'IT Procurement Manager', Description: 'Manage procurement'});
CREATE (:Career {Name: 'IT Procurement Specialist', Description: 'Procure IT resources'});
CREATE (:Career {Name: 'IT Project Coordinator', Description: 'Coordinate IT projects'});
CREATE (:Career {Name: 'IT Project Manager', Description: 'Manage projects'});
CREATE (:Career {Name: 'IT Quality Analyst', Description: 'Ensure software quality'});
CREATE (:Career {Name: 'IT Risk Analyst', Description: 'Analyze IT risks'});
CREATE (:Career {Name: 'IT Sales Manager', Description: 'Manage IT sales team'});
CREATE (:Career {Name: 'IT Sales Representative', Description: 'Sell IT solutions'});
CREATE (:Career {Name: 'IT Security Analyst', Description: 'Ensure IT security'});
CREATE (:Career {Name: 'IT Security Consultant', Description: 'Provide security consultancy'});
CREATE (:Career {Name: 'IT Service Desk Analyst', Description: 'Provide service desk support'});
CREATE (:Career {Name: 'IT Support Analyst', Description: 'Provide IT support'});
CREATE (:Career {Name: 'IT Support Specialist', Description: 'Provide IT support'});
CREATE (:Career {Name: 'IT Trainer', Description: 'Train IT professionals'});
CREATE (:Career {Name: 'IT Trainer Specialist', Description: 'Specialize in IT training'});
CREATE (:Career {Name: 'Machine Learning Engineer', Description: 'Develop ML models'});
CREATE (:Career {Name: 'Mobile App Developer', Description: 'Develop mobile apps'});
CREATE (:Career {Name: 'Network Administrator Trainee', Description: 'Train as network admin'});
CREATE (:Career {Name: 'Network Engineer', Description: 'Manage network infrastructure'});
CREATE (:Career {Name: 'Network Security Engineer', Description: 'Secure networks'});
CREATE (:Career {Name: 'QA Automation Engineer', Description: 'Automate software testing'});
CREATE (:Career {Name: 'Software Architect', Description: 'Design software'});
CREATE (:Career {Name: 'Software Developer', Description: 'Develop software'});
CREATE (:Career {Name: 'Software Engineer', Description: 'Develop software'});
CREATE (:Career {Name: 'Software Tester', Description: 'Test software'});
CREATE (:Career {Name: 'System Administrator', Description: 'Maintain systems'});
CREATE (:Career {Name: 'UI Developer', Description: 'Design web interfaces'});
CREATE (:Career {Name: 'UX Designer', Description: 'Design user experiences'});
CREATE (:Career {Name: 'UX Research Assistant', Description: 'Assist in UX research'});
CREATE (:Career {Name: 'UX Researcher', Description: 'Conduct UX research'});
CREATE (:Career {Name: 'UX/UI Designer', Description: 'Design user interfaces'});

//Skill Nodes
CREATE (:Skill {Name: 'Ethics'});
CREATE (:Skill {Name: 'AI Governance'});
CREATE (:Skill {Name: 'Python'});
CREATE (:Skill {Name: 'TensorFlow'});
CREATE (:Skill {Name: 'AI/ML'});
CREATE (:Skill {Name: 'Blockchain'});
CREATE (:Skill {Name: 'Solidity'});
CREATE (:Skill {Name: 'Business Analysis'});
CREATE (:Skill {Name: 'Requirements'});
CREATE (:Skill {Name: 'AWS'});
CREATE (:Skill {Name: 'Azure'});
CREATE (:Skill {Name: 'Cloud Architecture'});
CREATE (:Skill {Name: 'Cloud Design'});
CREATE (:Skill {Name: 'Cloud Migration'});
CREATE (:Skill {Name: 'Cloud Security'});
CREATE (:Skill {Name: 'Threat Analysis'});
CREATE (:Skill {Name: 'Encryption'});
CREATE (:Skill {Name: 'Cloud Analysis'});
CREATE (:Skill {Name: 'Cloud Services'});
CREATE (:Skill {Name: 'Cybersecurity'});
CREATE (:Skill {Name: 'Threat Detection'});
CREATE (:Skill {Name: 'Penetration Testing'});
CREATE (:Skill {Name: 'SQL'});
CREATE (:Skill {Name: 'Excel'});
CREATE (:Skill {Name: 'Data Analysis'});
CREATE (:Skill {Name: 'Data Visualization'});
CREATE (:Skill {Name: 'Data Analytics'});
CREATE (:Skill {Name: 'Team Management'});
CREATE (:Skill {Name: 'ETL'});
CREATE (:Skill {Name: 'Big Data'});
CREATE (:Skill {Name: 'Data Governance'});
CREATE (:Skill {Name: 'Data Quality'});
CREATE (:Skill {Name: 'GDPR'});
CREATE (:Skill {Name: 'Data Protection'});
CREATE (:Skill {Name: 'R'});
CREATE (:Skill {Name: 'Machine Learning'});
CREATE (:Skill {Name: 'Database Management'});
CREATE (:Skill {Name: 'Oracle'});
CREATE (:Skill {Name: 'Docker'});
CREATE (:Skill {Name: 'Jenkins'});
CREATE (:Skill {Name: 'DevOps'});
CREATE (:Skill {Name: 'DevSecOps'});
CREATE (:Skill {Name: 'CI/CD'});
CREATE (:Skill {Name: 'HTML'});
CREATE (:Skill {Name: 'CSS'});
CREATE (:Skill {Name: 'JavaScript'});
CREATE (:Skill {Name: 'React'});
CREATE (:Skill {Name: 'Node.js'});
CREATE (:Skill {Name: 'IT Analysis'});
CREATE (:Skill {Name: 'Troubleshooting'});
CREATE (:Skill {Name: 'Training'});
CREATE (:Skill {Name: 'IT Asset Management'});
CREATE (:Skill {Name: 'Inventory'});
CREATE (:Skill {Name: 'Audit'});
CREATE (:Skill {Name: 'Risk Management'});
CREATE (:Skill {Name: 'IT Strategy'});
CREATE (:Skill {Name: 'Business Continuity'});
CREATE (:Skill {Name: 'Disaster Recovery'});
CREATE (:Skill {Name: 'Change Management'});
CREATE (:Skill {Name: 'Compliance'});
CREATE (:Skill {Name: 'Regulations'});
CREATE (:Skill {Name: 'Consulting'});
CREATE (:Skill {Name: 'IT Governance'});
CREATE (:Skill {Name: 'Customer Service'});
CREATE (:Skill {Name: 'Procurement Analysis'});
CREATE (:Skill {Name: 'Procurement Coordination'});
CREATE (:Skill {Name: 'Procurement'});
CREATE (:Skill {Name: 'Supply Chain'});
CREATE (:Skill {Name: 'Vendor Management'});
CREATE (:Skill {Name: 'Project Coordination'});
CREATE (:Skill {Name: 'PMP'});
CREATE (:Skill {Name: 'Agile'});
CREATE (:Skill {Name: 'Project Management'});
CREATE (:Skill {Name: 'QA'});
CREATE (:Skill {Name: 'Testing'});
CREATE (:Skill {Name: 'Risk Assessment'});
CREATE (:Skill {Name: 'Sales'});
CREATE (:Skill {Name: 'IT Sales'});
CREATE (:Skill {Name: 'Security'});
CREATE (:Skill {Name: 'Security Consulting'});
CREATE (:Skill {Name: 'IT Service Desk'});
CREATE (:Skill {Name: 'Windows'});
CREATE (:Skill {Name: 'Linux'});
CREATE (:Skill {Name: 'IT Education'});
CREATE (:Skill {Name: 'Specialization'});
CREATE (:Skill {Name: 'iOS'});
CREATE (:Skill {Name: 'Android'});
CREATE (:Skill {Name: 'Mobile Development'});
CREATE (:Skill {Name: 'Networking'});
CREATE (:Skill {Name: 'Cisco'});
CREATE (:Skill {Name: 'Network Troubleshooting'});
CREATE (:Skill {Name: 'WAN'});
CREATE (:Skill {Name: 'Firewall'});
CREATE (:Skill {Name: 'VPN'});
CREATE (:Skill {Name: 'Test Automation'});
CREATE (:Skill {Name: 'Selenium'});
CREATE (:Skill {Name: 'Architecture'});
CREATE (:Skill {Name: 'Design Patterns'});
CREATE (:Skill {Name: 'C++'});
CREATE (:Skill {Name: 'Software Design'});
CREATE (:Skill {Name: 'Java'});
CREATE (:Skill {Name: 'Software Development'});
CREATE (:Skill {Name: 'Manual Testing'});
CREATE (:Skill {Name: 'Bug Tracking'});
CREATE (:Skill {Name: 'Windows Server'});
CREATE (:Skill {Name: 'Active Directory'});
CREATE (:Skill {Name: 'UX Design'});
CREATE (:Skill {Name: 'Prototyping'});
CREATE (:Skill {Name: 'UX Research'});
CREATE (:Skill {Name: 'Support'});
CREATE (:Skill {Name: 'User Research'});
CREATE (:Skill {Name: 'UI/UX Design'});


// Relationships "PREREQUISITE_OF"
// Semester 2 Prerequisites
MATCH (pre:Class {Name: 'Fundamental Programming'}), (class:Class {Name: 'Data Structure'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Digital System'}), (class:Class {Name: 'Operating System'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Digital System'}), (class:Class {Name: 'Computer Organization'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Linear Algebra'}), (class:Class {Name: 'Numerical Computation'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);

// Semester 3 Prerequisites
MATCH (pre:Class {Name: 'Database System'}), (class:Class {Name: 'Web Programming'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Data Structure'}), (class:Class {Name: 'Object Oriented Programming'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Operating System'}), (class:Class {Name: 'Computer Network'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Calculus 2'}), (class:Class {Name: 'Graph Theory'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Calculus 2'}), (class:Class {Name: 'Discrete Mathematics'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Data Structure'}), (class:Class {Name: 'Artificial Intelligence Concepts'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);

// Semester 4 Prerequisites
MATCH (pre:Class {Name: 'Computer Network'}), (class:Class {Name: 'Network Programming'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Discrete Mathematics'}), (class:Class {Name: 'Probability and Statistics'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Calculus 2'}), (class:Class {Name: 'Automata'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Database System'}), (class:Class {Name: 'Database Management'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Data Structure'}), (class:Class {Name: 'Algorithm Design and Analysis'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Artificial Intelligence Concepts'}), (class:Class {Name: 'Machine Learning'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Software Development Concepts'}), (class:Class {Name: 'Software Design'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);

// Semester 5 Prerequisites
MATCH (pre:Class {Name: 'Object Oriented Programming'}), (class:Class {Name: 'Framework-based Programming'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Computer Network'}), (class:Class {Name: 'Information Security'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Probability and Statistics'}), (class:Class {Name: 'Modeling and Simulation'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Object Oriented Programming'}), (class:Class {Name: 'Computer Graphics'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Database Management'}), (class:Class {Name: 'Knowledge Based System Engineering'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Computer Network'}), (class:Class {Name: 'Network Technology'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Computer Network'}), (class:Class {Name: 'Wireless Network'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Machine Learning'}), (class:Class {Name: 'Image Processing and Computer Vision'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Machine Learning'}), (class:Class {Name: 'Data Mining'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);

// Semester 6 Prerequisites
MATCH (pre:Class {Name: 'Object Oriented Programming'}), (class:Class {Name: 'Mobile Programming'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Object Oriented Programming'}), (class:Class {Name: 'Human and Computer Interaction'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Computer Network'}), (class:Class {Name: 'Mobile Computing'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Computer Network'}), (class:Class {Name: 'Network Security'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Operating System'}), (class:Class {Name: 'Application Security'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Computer Organization'}), (class:Class {Name: 'Application Security'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Web Programming'}), (class:Class {Name: 'Interface-Based Programming'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Modeling and Simulation'}), (class:Class {Name: 'Dynamic System Simulation'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Modeling and Simulation'}), (class:Class {Name: 'Agent-Based Simulation'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Database Management'}), (class:Class {Name: 'System Audit'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Machine Learning'}), (class:Class {Name: 'Deep Learning'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Computer Network'}), (class:Class {Name: 'Pervasive Computing and Sensor Networks'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Machine Learning'}), (class:Class {Name: 'Software Construction'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Software Design'}), (class:Class {Name: 'Software Quality'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);

// Semester 7 Prerequisites
MATCH (pre:Class {Name: 'Network Programming'}), (class:Class {Name: 'Digital Forensic'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Algorithm Design and Analysis'}), (class:Class {Name: 'Signal Processing Programming'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Probability and Statistics'}), (class:Class {Name: 'Multivariate Data Analysis'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Modeling and Simulation'}), (class:Class {Name: 'Object Oriented Simulation'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Computer Graphics'}), (class:Class {Name: 'Extended Reality'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Software Design'}), (class:Class {Name: 'Software Architecture'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);
MATCH (pre:Class {Name: 'Software Design'}), (class:Class {Name: 'Software Evolution'}) MERGE (pre)-[:PREREQUISITE_OF]->(class);

// Relationships "REQUIRES"

MATCH (career:Career {Name: 'AI Ethics Consultant'}), (skill:Skill {Name: 'Ethics'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'AI Ethics Consultant'}), (skill:Skill {Name: 'AI Governance'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'AI/ML Engineer'}), (skill:Skill {Name: 'Python'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'AI/ML Engineer'}), (skill:Skill {Name: 'TensorFlow'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'AI/ML Engineer'}), (skill:Skill {Name: 'AI/ML'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Blockchain Developer'}), (skill:Skill {Name: 'Blockchain'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Blockchain Developer'}), (skill:Skill {Name: 'Solidity'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Business Analyst'}), (skill:Skill {Name: 'Business Analysis'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Business Analyst'}), (skill:Skill {Name: 'Requirements'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Cloud Architect'}), (skill:Skill {Name: 'AWS'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cloud Architect'}), (skill:Skill {Name: 'Azure'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cloud Architect'}), (skill:Skill {Name: 'Cloud Architecture'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Cloud Migration Specialist'}), (skill:Skill {Name: 'Cloud Migration'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cloud Migration Specialist'}), (skill:Skill {Name: 'AWS'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cloud Migration Specialist'}), (skill:Skill {Name: 'Azure'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Cloud Security Analyst'}), (skill:Skill {Name: 'Cloud Security'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cloud Security Analyst'}), (skill:Skill {Name: 'Threat Analysis'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Cloud Security Engineer'}), (skill:Skill {Name: 'Cloud Security'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cloud Security Engineer'}), (skill:Skill {Name: 'Encryption'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Cloud Solutions Analyst'}), (skill:Skill {Name: 'AWS'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cloud Solutions Analyst'}), (skill:Skill {Name: 'Azure'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cloud Solutions Analyst'}), (skill:Skill {Name: 'Cloud Analysis'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Cloud Solutions Architect'}), (skill:Skill {Name: 'AWS'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cloud Solutions Architect'}), (skill:Skill {Name: 'Azure'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cloud Solutions Architect'}), (skill:Skill {Name: 'Cloud Architecture'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Cloud Support Engineer'}), (skill:Skill {Name: 'AWS'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cloud Support Engineer'}), (skill:Skill {Name: 'Azure'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cloud Support Engineer'}), (skill:Skill {Name: 'Cloud Services'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Cybersecurity Analyst'}), (skill:Skill {Name: 'Cybersecurity'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cybersecurity Analyst'}), (skill:Skill {Name: 'Threat Detection'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cybersecurity Analyst'}), (skill:Skill {Name: 'Threat Analysis'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Cybersecurity Engineer'}), (skill:Skill {Name: 'Cybersecurity'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Cybersecurity Engineer'}), (skill:Skill {Name: 'Penetration Testing'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Data Analyst'}), (skill:Skill {Name: 'SQL'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Data Analyst'}), (skill:Skill {Name: 'Excel'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Data Analyst'}), (skill:Skill {Name: 'Data Analysis'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Data Analyst'}), (skill:Skill {Name: 'Data Visualization'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Data Analytics Manager'}), (skill:Skill {Name: 'Data Analytics'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Data Analytics Manager'}), (skill:Skill {Name: 'Team Management'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Data Engineer'}), (skill:Skill {Name: 'ETL'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Data Engineer'}), (skill:Skill {Name: 'Big Data'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Data Engineer'}), (skill:Skill {Name: 'SQL'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Data Engineer'}), (skill:Skill {Name: 'Python'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Data Governance Analyst'}), (skill:Skill {Name: 'Data Governance'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Data Governance Analyst'}), (skill:Skill {Name: 'Data Quality'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Data Privacy Officer'}), (skill:Skill {Name: 'GDPR'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Data Privacy Officer'}), (skill:Skill {Name: 'Data Protection'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Data Scientist'}), (skill:Skill {Name: 'R'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Data Scientist'}), (skill:Skill {Name: 'Python'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Data Scientist'}), (skill:Skill {Name: 'Machine Learning'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Database Administrator'}), (skill:Skill {Name: 'SQL'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Database Administrator'}), (skill:Skill {Name: 'Database Management'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Database Analyst'}), (skill:Skill {Name: 'SQL'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Database Analyst'}), (skill:Skill {Name: 'Oracle'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Database Analyst'}), (skill:Skill {Name: 'Database Management'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'DevOps Engineer'}), (skill:Skill {Name: 'Docker'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'DevOps Engineer'}), (skill:Skill {Name: 'Jenkins'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'DevOps Engineer'}), (skill:Skill {Name: 'DevOps'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'DevSecOps Engineer'}), (skill:Skill {Name: 'DevSecOps'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'DevSecOps Engineer'}), (skill:Skill {Name: 'CI/CD'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Front-end Developer'}), (skill:Skill {Name: 'HTML'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Front-end Developer'}), (skill:Skill {Name: 'CSS'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Front-end Developer'}), (skill:Skill {Name: 'JavaScript'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Front-end Developer'}), (skill:Skill {Name: 'React'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Full-stack Developer'}), (skill:Skill {Name: 'JavaScript'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Full-stack Developer'}), (skill:Skill {Name: 'Node.js'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Full-stack Developer'}), (skill:Skill {Name: 'HTML/CSS'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Analyst'}), (skill:Skill {Name: 'IT Analysis'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Analyst'}), (skill:Skill {Name: 'Troubleshooting'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Analyst Trainee'}), (skill:Skill {Name: 'IT Analysis'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Analyst Trainee'}), (skill:Skill {Name: 'Training'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Asset Manager'}), (skill:Skill {Name: 'IT Asset Management'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Asset Manager'}), (skill:Skill {Name: 'Inventory'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Auditor'}), (skill:Skill {Name: 'Audit'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Auditor'}), (skill:Skill {Name: 'Risk Management'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Business Analyst'}), (skill:Skill {Name: 'Business Analysis'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Business Analyst'}), (skill:Skill {Name: 'IT Strategy'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Business Continuity Manager'}), (skill:Skill {Name: 'Business Continuity'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Business Continuity Manager'}), (skill:Skill {Name: 'Disaster Recovery'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Change Manager'}), (skill:Skill {Name: 'Change Management'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Change Manager'}), (skill:Skill {Name: 'IT Strategy'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Compliance Officer'}), (skill:Skill {Name: 'Compliance'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Compliance Officer'}), (skill:Skill {Name: 'Regulations'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Consultant'}), (skill:Skill {Name: 'Consulting'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Consultant'}), (skill:Skill {Name: 'IT Strategy'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Governance Manager'}), (skill:Skill {Name: 'IT Governance'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Governance Manager'}), (skill:Skill {Name: 'Compliance'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Helpdesk Support'}), (skill:Skill {Name: 'Troubleshooting'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Helpdesk Support'}), (skill:Skill {Name: 'Customer Service'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Procurement Analyst'}), (skill:Skill {Name: 'Procurement Analysis'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Procurement Coordinator'}), (skill:Skill {Name: 'Procurement Coordination'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Procurement Manager'}), (skill:Skill {Name: 'Procurement'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Procurement Manager'}), (skill:Skill {Name: 'Supply Chain'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Procurement Specialist'}), (skill:Skill {Name: 'Procurement'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Procurement Specialist'}), (skill:Skill {Name: 'Vendor Management'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Project Coordinator'}), (skill:Skill {Name: 'Project Coordination'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Project Manager'}), (skill:Skill {Name: 'PMP'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Project Manager'}), (skill:Skill {Name: 'Agile'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Project Manager'}), (skill:Skill {Name: 'Project Management'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Quality Analyst'}), (skill:Skill {Name: 'QA'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Quality Analyst'}), (skill:Skill {Name: 'Testing'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Risk Analyst'}), (skill:Skill {Name: 'Risk Assessment'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Risk Analyst'}), (skill:Skill {Name: 'Compliance'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Sales Manager'}), (skill:Skill {Name: 'Sales'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Sales Manager'}), (skill:Skill {Name: 'IT Sales'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Sales Representative'}), (skill:Skill {Name: 'Sales'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Sales Representative'}), (skill:Skill {Name: 'IT Sales'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Security Analyst'}), (skill:Skill {Name: 'Security'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Security Analyst'}), (skill:Skill {Name: 'Threat Analysis'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Security Consultant'}), (skill:Skill {Name: 'Security Consulting'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Service Desk Analyst'}), (skill:Skill {Name: 'IT Service Desk'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Service Desk Analyst'}), (skill:Skill {Name: 'Troubleshooting'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Support Analyst'}), (skill:Skill {Name: 'Windows'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Support Analyst'}), (skill:Skill {Name: 'Linux'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Support Analyst'}), (skill:Skill {Name: 'Troubleshooting'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Support Specialist'}), (skill:Skill {Name: 'Windows'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Support Specialist'}), (skill:Skill {Name: 'Troubleshooting'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Trainer'}), (skill:Skill {Name: 'Training'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Trainer'}), (skill:Skill {Name: 'IT Education'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'IT Trainer Specialist'}), (skill:Skill {Name: 'Training'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'IT Trainer Specialist'}), (skill:Skill {Name: 'Specialization'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Machine Learning Engineer'}), (skill:Skill {Name: 'Machine Learning'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Machine Learning Engineer'}), (skill:Skill {Name: 'Python'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Mobile App Developer'}), (skill:Skill {Name: 'iOS'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Mobile App Developer'}), (skill:Skill {Name: 'Android'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Mobile App Developer'}), (skill:Skill {Name: 'Mobile Development'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Network Administrator Trainee'}), (skill:Skill {Name: 'Networking'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Network Administrator Trainee'}), (skill:Skill {Name: 'Training'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Network Engineer'}), (skill:Skill {Name: 'Cisco'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Network Engineer'}), (skill:Skill {Name: 'Network Troubleshooting'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Network Engineer'}), (skill:Skill {Name: 'Networking'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Network Engineer'}), (skill:Skill {Name: 'WAN'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Network Security Engineer'}), (skill:Skill {Name: 'Firewall'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Network Security Engineer'}), (skill:Skill {Name: 'VPN'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Network Security Engineer'}), (skill:Skill {Name: 'Security'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'QA Automation Engineer'}), (skill:Skill {Name: 'Test Automation'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'QA Automation Engineer'}), (skill:Skill {Name: 'Selenium'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Software Architect'}), (skill:Skill {Name: 'Architecture'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Software Architect'}), (skill:Skill {Name: 'Design Patterns'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Software Developer'}), (skill:Skill {Name: 'Java'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Software Developer'}), (skill:Skill {Name: 'JavaScript'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Software Developer'}), (skill:Skill {Name: 'HTML/CSS'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Software Developer'}), (skill:Skill {Name: 'C++'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Software Developer'}), (skill:Skill {Name: 'Software Design'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Software Developer'}), (skill:Skill {Name: 'Python'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Software Developer'}), (skill:Skill {Name: 'Software Development'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Software Engineer'}), (skill:Skill {Name: 'Java'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Software Engineer'}), (skill:Skill {Name: 'Python'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Software Engineer'}), (skill:Skill {Name: 'Software Development'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'Software Tester'}), (skill:Skill {Name: 'Manual Testing'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'Software Tester'}), (skill:Skill {Name: 'Bug Tracking'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'System Administrator'}), (skill:Skill {Name: 'Windows Server'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'System Administrator'}), (skill:Skill {Name: 'Networking'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'System Administrator'}), (skill:Skill {Name: 'Active Directory'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'UI Developer'}), (skill:Skill {Name: 'HTML'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'UI Developer'}), (skill:Skill {Name: 'CSS'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'UI Developer'}), (skill:Skill {Name: 'JavaScript'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'UX Designer'}), (skill:Skill {Name: 'UX Design'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'UX Designer'}), (skill:Skill {Name: 'Prototyping'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'UX Research Assistant'}), (skill:Skill {Name: 'UX Research'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'UX Research Assistant'}), (skill:Skill {Name: 'Support'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'UX Researcher'}), (skill:Skill {Name: 'User Research'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'UX Researcher'}), (skill:Skill {Name: 'UX Design'}) MERGE (career)-[:REQUIRES]->(skill);

MATCH (career:Career {Name: 'UX/UI Designer'}), (skill:Skill {Name: 'UI/UX Design'}) MERGE (career)-[:REQUIRES]->(skill);
MATCH (career:Career {Name: 'UX/UI Designer'}), (skill:Skill {Name: 'Prototyping'}) MERGE (career)-[:REQUIRES]->(skill);

// TEACHES Relationships

// Semester 1 Mandatory Classes
MATCH (c:Class {Name: 'Fundamental Programming'}), (s:Skill {Name: 'Software Development'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Fundamental Programming'}), (s:Skill {Name: 'C++'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Database System'}), (s:Skill {Name: 'SQL'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Database System'}), (s:Skill {Name: 'Database Management'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Database System'}), (s:Skill {Name: 'Oracle'}) MERGE (c)-[:TEACHES]->(s);

// Semester 2 Mandatory Classes
MATCH (c:Class {Name: 'Data Structure'}), (s:Skill {Name: 'Software Development'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Data Structure'}), (s:Skill {Name: 'C++'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Operating System'}), (s:Skill {Name: 'Linux'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Operating System'}), (s:Skill {Name: 'Windows'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Operating System'}), (s:Skill {Name: 'Docker'}) MERGE (c)-[:TEACHES]->(s);


// Semester 3 Mandatory Classes
MATCH (c:Class {Name: 'Web Programming'}), (s:Skill {Name: 'HTML'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Web Programming'}), (s:Skill {Name: 'CSS'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Web Programming'}), (s:Skill {Name: 'JavaScript'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Object Oriented Programming'}), (s:Skill {Name: 'Software Design'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Object Oriented Programming'}), (s:Skill {Name: 'Design Patterns'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Object Oriented Programming'}), (s:Skill {Name: 'Java'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Computer Network'}), (s:Skill {Name: 'Networking'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Computer Network'}), (s:Skill {Name: 'Cisco'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Computer Network'}), (s:Skill {Name: 'Firewall'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Artificial Intelligence Concepts'}), (s:Skill {Name: 'AI/ML'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Artificial Intelligence Concepts'}), (s:Skill {Name: 'Machine Learning'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Artificial Intelligence Concepts'}), (s:Skill {Name: 'Python'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Development Principles'}), (s:Skill {Name: 'Software Development'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Development Principles'}), (s:Skill {Name: 'Agile'}) MERGE (c)-[:TEACHES]->(s);

// Semester 4 Mandatory Classes
MATCH (c:Class {Name: 'Network Programming'}), (s:Skill {Name: 'Networking'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Probabilistic and Statistic'}), (s:Skill {Name: 'Data Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Database Management'}), (s:Skill {Name: 'Database Management'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Database Management'}), (s:Skill {Name: 'SQL'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Database Management'}), (s:Skill {Name: 'Oracle'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Machine Learning'}), (s:Skill {Name: 'Machine Learning'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Machine Learning'}), (s:Skill {Name: 'AI/ML'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Machine Learning'}), (s:Skill {Name: 'Python'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Design'}), (s:Skill {Name: 'Software Design'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Design'}), (s:Skill {Name: 'Architecture'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Design'}), (s:Skill {Name: 'Design Patterns'}) MERGE (c)-[:TEACHES]->(s);

// Semester 5 Mandatory Classes
MATCH (c:Class {Name: 'Framework-based Programming'}), (s:Skill {Name: 'React'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Framework-based Programming'}), (s:Skill {Name: 'Node.js'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Information Security'}), (s:Skill {Name: 'Cybersecurity'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Information Security'}), (s:Skill {Name: 'Security'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Information Security'}), (s:Skill {Name: 'Encryption'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Information Security'}), (s:Skill {Name: 'Threat Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Computer Graphics'}), (s:Skill {Name: 'C++'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Knowledge based Engineering'}), (s:Skill {Name: 'AI/ML'}) MERGE (c)-[:TEACHES]->(s);

// Semester 6 Mandatory Classes
MATCH (c:Class {Name: 'Technopreneurship'}), (s:Skill {Name: 'Business Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Technopreneurship'}), (s:Skill {Name: 'Sales'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Mobile Programming'}), (s:Skill {Name: 'Mobile Development'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Mobile Programming'}), (s:Skill {Name: 'Android'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Mobile Programming'}), (s:Skill {Name: 'iOS'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Human and Computer Interaction'}), (s:Skill {Name: 'UI/UX Design'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Human and Computer Interaction'}), (s:Skill {Name: 'UX Design'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Human and Computer Interaction'}), (s:Skill {Name: 'UX Research'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Human and Computer Interaction'}), (s:Skill {Name: 'Prototyping'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Capstone Project'}), (s:Skill {Name: 'Project Management'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Capstone Project'}), (s:Skill {Name: 'Software Development'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Practical Work'}), (s:Skill {Name: 'Team Management'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Practical Work'}), (s:Skill {Name: 'Troubleshooting'}) MERGE (c)-[:TEACHES]->(s);

// Semester 7 Mandatory Classes
MATCH (c:Class {Name: 'Applied Technology and Digital Transformation'}), (s:Skill {Name: 'IT Strategy'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Applied Technology and Digital Transformation'}), (s:Skill {Name: 'Change Management'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Professional Ethics'}), (s:Skill {Name: 'Ethics'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Professional Ethics'}), (s:Skill {Name: 'Compliance'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Professional Ethics'}), (s:Skill {Name: 'Regulations'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Underground Pre-Thesis'}), (s:Skill {Name: 'Project Coordination'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Underground Pre-Thesis'}), (s:Skill {Name: 'Project Management'}) MERGE (c)-[:TEACHES]->(s);

// Semester 8 Mandatory Classes
MATCH (c:Class {Name: 'Final Project'}), (s:Skill {Name: 'Project Management'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Final Project'}), (s:Skill {Name: 'Data Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Final Project'}), (s:Skill {Name: 'Data Visualization'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Final Project'}), (s:Skill {Name: 'Troubleshooting'}) MERGE (c)-[:TEACHES]->(s);

// Elective Classes
// Odd Semester
MATCH (c:Class {Name: 'Data Mining'}), (s:Skill {Name: 'Big Data'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Data Mining'}), (s:Skill {Name: 'ETL'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Data Mining'}), (s:Skill {Name: 'Data Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Wireless Network'}), (s:Skill {Name: 'Networking'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Wireless Network'}), (s:Skill {Name: 'WAN'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Project Management'}), (s:Skill {Name: 'Project Management'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Project Management'}), (s:Skill {Name: 'Agile'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Project Management'}), (s:Skill {Name: 'Risk Management'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Competitive Programming'}), (s:Skill {Name: 'C++'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Competitive Programming'}), (s:Skill {Name: 'Python'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Image Processing and Computer Vision'}), (s:Skill {Name: 'AI/ML'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Image Processing and Computer Vision'}), (s:Skill {Name: 'Python'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Requirement Engineering'}), (s:Skill {Name: 'Requirements'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Requirement Engineering'}), (s:Skill {Name: 'Business Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Research Operation'}), (s:Skill {Name: 'Data Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Enterprise Systems'}), (s:Skill {Name: 'IT Strategy'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Enterprise Systems'}), (s:Skill {Name: 'Business Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Distributed Systems'}), (s:Skill {Name: 'Cloud Architecture'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Distributed Systems'}), (s:Skill {Name: 'Networking'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'IT Governance'}), (s:Skill {Name: 'IT Governance'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'IT Governance'}), (s:Skill {Name: 'Audit'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'IT Governance'}), (s:Skill {Name: 'Compliance'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Game Development Techniques'}), (s:Skill {Name: 'C++'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Game Development Techniques'}), (s:Skill {Name: 'Software Design'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Network Technology'}), (s:Skill {Name: 'Networking'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Network Technology'}), (s:Skill {Name: 'Cisco'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Network Technology'}), (s:Skill {Name: 'Firewall'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Multivariate Data Analysis'}), (s:Skill {Name: 'Data Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Multivariate Data Analysis'}), (s:Skill {Name: 'R'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Architecture'}), (s:Skill {Name: 'Architecture'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Architecture'}), (s:Skill {Name: 'Software Design'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Architecture'}), (s:Skill {Name: 'Design Patterns'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Big Data'}), (s:Skill {Name: 'Big Data'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Big Data'}), (s:Skill {Name: 'ETL'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Big Data'}), (s:Skill {Name: 'Data Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Evolution'}), (s:Skill {Name: 'Software Development'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Evolution'}), (s:Skill {Name: 'Change Management'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Digital Forensic'}), (s:Skill {Name: 'Cybersecurity'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Digital Forensic'}), (s:Skill {Name: 'Threat Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Digital Forensic'}), (s:Skill {Name: 'Data Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Smart Game'}), (s:Skill {Name: 'AI/ML'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Smart Game'}), (s:Skill {Name: 'C++'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Cloud Computing'}), (s:Skill {Name: 'Cloud Services'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Cloud Computing'}), (s:Skill {Name: 'Cloud Architecture'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Cloud Computing'}), (s:Skill {Name: 'AWS'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Cloud Computing'}), (s:Skill {Name: 'Azure'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Internship'}), (s:Skill {Name: 'Team Management'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Internship'}), (s:Skill {Name: 'Troubleshooting'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Applied Data Science Programming'}), (s:Skill {Name: 'Data Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Applied Data Science Programming'}), (s:Skill {Name: 'Python'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Applied Data Science Programming'}), (s:Skill {Name: 'R'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Applied Data Science Programming'}), (s:Skill {Name: 'Machine Learning'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Signal Processing'}), (s:Skill {Name: 'Data Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'X Reality'}), (s:Skill {Name: 'UI/UX Design'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'X Reality'}), (s:Skill {Name: 'Prototyping'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Robotics'}), (s:Skill {Name: 'AI/ML'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Robotics'}), (s:Skill {Name: 'C++'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Object Oriented Simulation'}), (s:Skill {Name: 'Software Design'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'IoT Technology'}), (s:Skill {Name: 'Networking'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'IoT Technology'}), (s:Skill {Name: 'Cloud Services'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Algorithm and Programming'}), (s:Skill {Name: 'Software Development'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Computer Architecture and Networks'}), (s:Skill {Name: 'Networking'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Computer Architecture and Networks'}), (s:Skill {Name: 'Architecture'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Graphics, Interaction and Game'}), (s:Skill {Name: 'UI/UX Design'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Graphics, Interaction and Game'}), (s:Skill {Name: 'C++'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Network Based Computation'}), (s:Skill {Name: 'Networking'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Network Based Computation'}), (s:Skill {Name: 'Cloud Services'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Intelligent Computation and Vision'}), (s:Skill {Name: 'AI/ML'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Intelligent Computation and Vision'}), (s:Skill {Name: 'Machine Learning'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Information Intelligent Management'}), (s:Skill {Name: 'Database Management'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Information Intelligent Management'}), (s:Skill {Name: 'Data Governance'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Applied Computing and Modeling'}), (s:Skill {Name: 'Data Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Software Engineering'}), (s:Skill {Name: 'Software Design'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Special Topics on Software Engineering'}), (s:Skill {Name: 'DevOps'}) MERGE (c)-[:TEACHES]->(s);

// Even Semester
MATCH (c:Class {Name: 'Computer Animation and 3D Modeling'}), (s:Skill {Name: 'C++'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'System Audit'}), (s:Skill {Name: 'Audit'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'System Audit'}), (s:Skill {Name: 'Risk Management'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'System Audit'}), (s:Skill {Name: 'Compliance'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Distributed Database'}), (s:Skill {Name: 'Database Management'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Distributed Database'}), (s:Skill {Name: 'Big Data'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Deep Learning'}), (s:Skill {Name: 'AI/ML'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Deep Learning'}), (s:Skill {Name: 'TensorFlow'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Deep Learning'}), (s:Skill {Name: 'Python'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'User Experience Design'}), (s:Skill {Name: 'UX Design'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'User Experience Design'}), (s:Skill {Name: 'User Research'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'User Experience Design'}), (s:Skill {Name: 'Prototyping'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Education and Simulation Games'}), (s:Skill {Name: 'C++'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Game Engine'}), (s:Skill {Name: 'C++'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Game Engine'}), (s:Skill {Name: 'Architecture'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Application Security'}), (s:Skill {Name: 'Security'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Application Security'}), (s:Skill {Name: 'DevSecOps'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Network Security'}), (s:Skill {Name: 'Networking'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Network Security'}), (s:Skill {Name: 'Firewall'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Network Security'}), (s:Skill {Name: 'VPN'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Mobile Computing'}), (s:Skill {Name: 'Mobile Development'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Mobile Computing'}), (s:Skill {Name: 'Android'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Mobile Computing'}), (s:Skill {Name: 'iOS'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Pervasive Computing and sensor networks'}), (s:Skill {Name: 'Networking'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Construction'}), (s:Skill {Name: 'Software Development'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Construction'}), (s:Skill {Name: 'CI/CD'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Quality'}), (s:Skill {Name: 'QA'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Quality'}), (s:Skill {Name: 'Testing'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Quality'}), (s:Skill {Name: 'Test Automation'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Software Quality'}), (s:Skill {Name: 'Selenium'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Interface Programming'}), (s:Skill {Name: 'UI/UX Design'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Interface Programming'}), (s:Skill {Name: 'React'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Agent-based Simulation'}), (s:Skill {Name: 'AI/ML'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Dynamic System Simulation'}), (s:Skill {Name: 'Data Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Geographical Information Systems'}), (s:Skill {Name: 'Data Visualization'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Forecasting Techniques'}), (s:Skill {Name: 'Data Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Text Mining'}), (s:Skill {Name: 'Big Data'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Text Mining'}), (s:Skill {Name: 'Data Analysis'}) MERGE (c)-[:TEACHES]->(s);
MATCH (c:Class {Name: 'Text Mining'}), (s:Skill {Name: 'Python'}) MERGE (c)-[:TEACHES]->(s);


## ML Basics
CALL gds.version();
CALL gds.graph.project(
  'careerGraph',
  {
    Career: {},
    Class: {},
    Skill: {}
  },
  {
    REQUIRES: {orientation: 'UNDIRECTED'},
    TEACHES: {orientation: 'UNDIRECTED'},
    PREREQUISITE_OF: {orientation: 'UNDIRECTED'}
  }
);

CALL gds.node2vec.mutate(
  'careerGraph',
  {
    embeddingDimension: 64,
    walkLength: 40,
    walksPerNode: 10,
    returnFactor: 1.0,
    inOutFactor: 1.0,
    mutateProperty: 'embedding'
  }
)
YIELD nodePropertiesWritten;


// Get all Classes + their related Skills + prerequisite Classes
MATCH (c:Class)
OPTIONAL MATCH (c)-[:TEACHES]->(s:Skill)
OPTIONAL MATCH (c)-[:PREREQUISITE_OF]->(next:Class)
OPTIONAL MATCH (prev:Class)-[:PREREQUISITE_OF]->(c)

RETURN
    c.Name        AS name,
    c.Semester    AS semester,
    c.Status      AS status,
    c.Credits     AS credits,
    c.embedding   AS embedding,
    collect(DISTINCT s.Name)     AS teaches_skills,
    collect(DISTINCT next.Name)  AS prerequisites_for,
    collect(DISTINCT prev.Name)  AS prerequisites_required
ORDER BY name;

// Get all Skills + which Classes teach them + which Careers require them
MATCH (s:Skill)
OPTIONAL MATCH (c:Class)-[:TEACHES]->(s)
OPTIONAL MATCH (car:Career)-[:REQUIRES]->(s)

RETURN
    s.Name AS name,
    s.embedding AS embedding,
    collect(DISTINCT c.Name) AS taught_by_classes,
    collect(DISTINCT car.Name) AS required_by_careers
ORDER BY name;

// Get all Careers + required Skills + recommended Classes
MATCH (car:Career)
OPTIONAL MATCH (car)-[:REQUIRES]->(s:Skill)
OPTIONAL MATCH (c:Class)-[:TEACHES]->(s)

RETURN
    car.Name AS name,
    car.embedding AS embedding,
    collect(DISTINCT s.Name) AS required_skills,
    collect(DISTINCT c.Name) AS recommended_classes
ORDER BY name;