// If its student user, then the attendance of the student is displayed
// If its faculty user, then it will display things as follows:
// 1. Current class
// 1.1. If the class is ongoing, then the attendance of the students in the class is displayed
// 1.1.a [ Mark Attendance ] The Respective faculty can mark the attendance of the students for that period
// 1.1.b [ Attendance Report ] The Respective faculty can view the attendance of the students for that period
// 1.2. [ No Class Schdeuled ] If the class is not ongoing, it display there is no class going on

// 2. Today's classes
// Display all the classes that are scheduled for today

// 3. All Attendance Report
// All the below options are available for admin
// 3.1 Attendance report of all batches (Available for admins and HODs(HODs can view only their department students attendance report))
// it will display the attendance report of currrent 4 years students 
// eg: (2023-2027, 2022-2026, 2021-2025, 2020-2024) and an button for archive
// 3.2 Attendance report of all departments (Available for admins and HODs(HODs can view only their department students attendance report))
// eg: IT, CSE, ECE, EEE, CIVIL, MECH, AIDS, AIML, BME, BT, FOOD, AGRI (for admins)
// eg IT department (for IT HOD)
// Available 
// 3.3 Attendance report of all classes (Available for admins and HODs(HODs can view only their department students attendance report))
// eg: first year (IT-A, IT-B, IT-C), second year (IT-A, IT-B), third year (IT-A), fourth year (IT-A)
// 3.4 Attendance report of all students (Available for admins and HODs(HODs can view only their department students attendance report), Faculty-Class Advisor can view only their class students attendance report)
// search bar to search the student by name or register number or roll number

// 4. Attendance Report of a student (available for admins, HODs, Faculty-Class Advisor, and that student)
// It will display the attendance report of the student for the current semester
// 4.1. [ Overall Report ] It will display the overall attendance report of the student
// 4.2. [ Subject Wise Report ] It will display the subject wise attendance report of the student
// 4.3. [ Date Wise Report ] It will display the date wise attendance report of the student
// 4.4. [ Monthly Report ] It will display the monthly attendance report of the student
// 4.5. [ All Semesters Report ] It will display the attendance report of the student for all the semesters