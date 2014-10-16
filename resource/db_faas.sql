-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2014 at 02:24 AM
-- Server version: 5.6.11
-- PHP Version: 5.4.7

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_faas`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_main`
--
-- Creation: Dec 21, 2013 at 04:51 AM
--

DROP TABLE IF EXISTS `course_main`;
CREATE TABLE IF NOT EXISTS `course_main` (
  `course_id` char(7) NOT NULL,
  `course_desc_short` varchar(255) NOT NULL,
  `course_desc_long` varchar(255) NOT NULL,
  `course_status` varchar(255) NOT NULL,
  `course_credit_hours` int(11) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_main`
--

INSERT INTO `course_main` (`course_id`, `course_desc_short`, `course_desc_long`, `course_status`, `course_credit_hours`) VALUES
('EPA1123', 'Study and Communication Skills', 'Study and Communication Skills', 'ACTIVE', 3),
('FMA1133', 'Elementary Statistics', 'Elementary Statistics', 'ACTIVE', 3),
('FMA1134', 'Elementary Mathematics 1', 'Elementary Mathematics 1 for Foundation IT', 'ACTIVE', 4),
('FMA1233', 'Elementary Mathematics 2', 'Elementary Mathematics 2 for Foundation in IT', 'ACTIVE', 3),
('FMD1113', 'Mathematic 1', 'Mathematic 1', 'ACTIVE', 3),
('FMD1173', 'Principle of Mathematics', 'Principle of Mathematics', 'ACTIVE', 3),
('FMD1333', 'Applied Mathematics', 'Applied Mathematics', 'ACTIVE', 3),
('FMS1113', 'Mathematics', 'Mathematics', 'ACTIVE', 3),
('FMS1323', 'Statistics', 'Statistics', 'ACTIVE', 3),
('IAD1112', 'Excellence Ethics and Manners', 'Excellence Ethics and Manners', 'ACTIVE', 2),
('IAD1113', 'Computer Application', 'Computer Application', 'ACTIVE', 3),
('IAD1114', 'Computer Application 1', 'Computer Application 1', 'INACTIVE', 4),
('IAD1122', 'Positive Habits of Effective Peoples', 'Positive Habits of Effective Peoples', 'ACTIVE', 2),
('IAD1123', 'Fundamentals of Programming', 'Fundamentals of Programming', 'ACTIVE', 3),
('IAD1132', 'Science in Al-Quran', 'Science in Al-Quran', 'ACTIVE', 2),
('IAD1133', 'Programming Methodology', 'Programming Methodology', 'ACTIVE', 3),
('IAD1143', 'Introduction to Multimedia', 'Introduction to Multimedia', 'ACTIVE', 3),
('IAD1152', 'Positive Thinking', 'Positive Thinking', 'ACTIVE', 2),
('IAD1153', 'Computer Fundamental', 'Computer Fundamental', 'ACTIVE', 3),
('IAD1162', 'Human Personality and Team Building', 'Human Personality and Team Building', 'ACTIVE', 2),
('IAD1172', 'Introduction to Mua''amalah', 'Introduction to Mua''amalah', 'ACTIVE', 2),
('IAD1183', 'Introduction to Mobile', 'Introduction to Mobile', 'ACTIVE', 3),
('IAD1213', 'The Evolution of ICT', 'The Evolution of ICT', 'ACTIVE', 3),
('IAD1223', 'Network Technology', 'Network Technology', 'ACTIVE', 3),
('IAD1233', 'Discrete Mathematics', 'Discrete Mathematics', 'ACTIVE', 3),
('IAD1323', 'Information System', 'Information System', 'ACTIVE', 3),
('IAD2113', 'Entrepreneurship', 'Entrepreneurship', 'ACTIVE', 3),
('IAD2123', 'Computer Hardware Technologies', 'Computer Hardware Technologies', 'ACTIVE', 3),
('IAD2133', 'Object Oriented Programming', 'Object Oriented Programming', 'ACTIVE', 3),
('IAD2134', 'Introduction to Database', 'Introduction to Database', 'INACTIVE', 4),
('IAD2143', 'Database System', 'Database System', 'ACTIVE', 3),
('IAD2144', 'Introduction to Multimedia', 'Introduction to Multimedia', 'ACTIVE', 3),
('IAD2153', 'Computer Network and Security', 'Computer Network and Security', 'ACTIVE', 3),
('IAD2154', 'Computer Network and Security', 'Computer Network and Security', 'ACTIVE', 4),
('IAD2163', 'Computer System Maintenance', 'Computer System Maintenance', 'ACTIVE', 3),
('IAD2173', 'Web Development', 'Web Development', 'ACTIVE', 3),
('IAD2213', 'Operating System', 'Operating System', 'ACTIVE', 3),
('IAD2214', 'Operating System', 'Operating System', 'ACTIVE', 3),
('IAD2223', 'Network Technology', 'Network Technology', 'ACTIVE', 3),
('IAD2233', 'Introduction to e-Business', 'Introduction to e-Business', 'ACTIVE', 3),
('IAD2243', 'Visual Programming', 'Visual Programming', 'ACTIVE', 3),
('IAD2253', 'Computer & Network Security Fundamentals', 'Computer & Network Security Fundamentals', 'ACTIVE', 3),
('IAD2263', 'Introduction to System Analysis and Design', 'Introduction to System Analysis and Design', 'ACTIVE', 3),
('IAD2293', 'E-Business', 'E-Business', 'ACTIVE', 3),
('IAD2313', 'Fundamental of Computer Network', 'Fundamental of Computer Network', 'ACTIVE', 3),
('IAD2323', 'Computer Security', 'Computer Security', 'ACTIVE', 3),
('IAD2333', 'Human Computer Interaction', 'Human Computer Interaction', 'ACTIVE', 3),
('IAD2343', 'Ethics in Computing', 'Ethics in Computing', 'ACTIVE', 3),
('IAD3113', 'Computer-Aided Design', 'Computer-Aided Design', 'ACTIVE', 3),
('IAD3143', 'HTML Programming', 'HTML Programming', 'ACTIVE', 3),
('IAD3162', 'Final Year Project 1', 'Final Year Project 1', 'ACTIVE', 2),
('IAD3164', 'Final Year Project 2', 'Final Year Project 2', 'ACTIVE', 4),
('IAD3213', 'E-Commerce', 'E-Commerce', 'ACTIVE', 3),
('IAD3253', 'Content Management and Information Architecture', 'Content Management and Information Architecture', 'ACTIVE', 3),
('IAM6113', 'Research Methodology', 'Research Methodology', 'ACTIVE', 3),
('IAM6123', 'Interactive System Design', 'Interactive System Design', 'ACTIVE', 3),
('IAM6133', 'Advanced Database Technology', 'Advanced Database Technology', 'ACTIVE', 3),
('IAM6217', 'Master Dissertation', 'Master Dissertation', 'ACTIVE', 7),
('IAS1111', 'Introduction to HTML', 'Introduction to HTML', 'ACTIVE', 1),
('IAS1112', 'Excellence Ethics and Manners', 'Excellence Ethics and Manners', 'ACTIVE', 2),
('IAS1113', 'Introduction to Web Design', 'Introduction to Web Design', 'ACTIVE', 3),
('IAS1122', 'Positive Habits of Effective People', 'Positive Habits of Effective People', 'ACTIVE', 2),
('IAS1123', 'Programming Methodology', 'Programming Methodology', 'ACTIVE', 3),
('IAS1132', 'Science in Al-Quran', 'Science in Al-Quran', 'ACTIVE', 2),
('IAS1152', 'Positive Thinking', 'Positive Thinking', 'ACTIVE', 2),
('IAS1162', 'Human Personality and Team Building', 'Human Personality and Team Building', 'ACTIVE', 2),
('IAS1172', 'Introduction to Mu''amalah', 'Introduction to Mu''amalah', 'ACTIVE', 2),
('IAS1213', 'The World of ICT', 'The World of ICT', 'ACTIVE', 3),
('IAS1223', 'Data Structures and Algorithms', 'Data Structures and Algorithms', 'ACTIVE', 3),
('IAS1233', 'Operating System', 'Operating System', 'ACTIVE', 3),
('IAS1243', 'Computer Design', 'Computer Design', 'ACTIVE', 3),
('IAS1253', 'Computer Fundamental', 'Computer Fundamental', 'ACTIVE', 3),
('IAS1313', 'Object Oriented Programming', 'Object Oriented Programming', 'ACTIVE', 3),
('IAS1323', 'Information System', 'Information System', 'ACTIVE', 3),
('IAS2113', 'Business Planning and Entrepreneurship', 'Business Planning and Entrepreneurship', 'ACTIVE', 3),
('IAS2123', 'Computer Organization', 'Computer Organization', 'ACTIVE', 3),
('IAS2133', 'Software Engineering', 'Software Engineering', 'ACTIVE', 3),
('IAS2143', 'Database System', 'Database System', 'ACTIVE', 3),
('IAS2153', 'Computer Networking', 'Computer Networking', 'ACTIVE', 3),
('IAS2163', 'Visual Programming', 'Visual Programming', 'ACTIVE', 3),
('IAS2173', 'Introduction to ERP', 'Introduction to ERP', 'ACTIVE', 3),
('IAS2183', 'Web Development', 'Web Development', 'ACTIVE', 3),
('IAS2193', 'ICT Driven Revolution in Society', 'ICT Driven Revolution in Society', 'ACTIVE', 3),
('IAS2213', 'Discrete Mathematics', 'Discrete Mathematics', 'ACTIVE', 3),
('IAS2223', 'Human Computer Interaction', 'Human Computer Interaction', 'ACTIVE', 3),
('IAS2233', 'Computer Graphics', 'Computer Graphics', 'ACTIVE', 3),
('IAS2243', 'Web Application and Development', 'Web Application and Development', 'ACTIVE', 3),
('IAS2253', 'Computer and Network Security', 'Computer and Network Security', 'ACTIVE', 3),
('IAS2263', 'System Analysis and Design', 'System Analysis and Design', 'ACTIVE', 3),
('IAS2273', 'Operation Research', 'Operation Research', 'ACTIVE', 3),
('IAS2283', 'Production Planning and Control', 'Production Planning and Control', 'ACTIVE', 3),
('IAS2293', 'E-Business', 'E-Business', 'ACTIVE', 3),
('IAS2313', 'Artificial Intelligence', 'Artificial Intelligence', 'ACTIVE', 3),
('IAS2323', 'Operations Management', 'Operations Management', 'ACTIVE', 3),
('IAS2333', 'Mobile Programming', 'Mobile Programming', 'ACTIVE', 3),
('IAS2343', 'Managing Information Technology', 'Managing Information Technology', 'ACTIVE', 3),
('IAS2353', 'Mobile Programming', 'Mobile Programming', 'ACTIVE', 3),
('IAS3113', 'Interactive Multimedia', 'Interactive Multimedia', 'ACTIVE', 3),
('IAS3133', 'Project Management', 'Project Management', 'ACTIVE', 3),
('IAS3143', 'Data Mining and Data Warehouse', 'Data Mining and Data Warehouse', 'ACTIVE', 3),
('IAS3153', 'Mobile Programming', 'Mobile Programming', 'ACTIVE', 3),
('IAS3163', 'Concurrent Programming', 'Concurrent Programming', 'ACTIVE', 3),
('IAS3213', 'E-Commerce', 'E-Commerce', 'ACTIVE', 3),
('IAS3223', 'IT Resource Management', 'IT Resource Management', 'ACTIVE', 3),
('IAS3232', 'Final Year Project 1', 'Final Year Project 1', 'ACTIVE', 2),
('IAS3233', 'Expert System', 'Expert System', 'ACTIVE', 3),
('IAS3243', 'Manufacturing System and Automation', 'Manufacturing System and Automation', 'ACTIVE', 3),
('IAS3244', 'Final Year Project 2', 'Final Year Project 2', 'ACTIVE', 4),
('IAS3293', 'Politics and Economy in IT', 'Politics and Economy in IT', 'ACTIVE', 3),
('IAS3313', 'Enterprise Resources Planning', 'Enterprise Resources Planning', 'ACTIVE', 3),
('IAS3316', 'Industrial Training', 'Industrial Training', 'ACTIVE', 6),
('IAS3323', 'Multimedia Innovation', 'Multimedia Innovation', 'ACTIVE', 3),
('IAS3333', 'Computer and Network Security', 'Computer and Network Security', 'ACTIVE', 3),
('IAS3343', 'Business Communication', 'Business Communication', 'ACTIVE', 3),
('IAS3363', 'IT Sales and Marketing', 'IT Sales and Marketing', 'ACTIVE', 3),
('IAS3373', 'Telecommunications', 'Telecommunications', 'ACTIVE', 3),
('IAS3383', 'Modeling and Simulation', 'Modeling and Simulation', 'ACTIVE', 3),
('IBD1113', 'Principles of Accounting', 'Principles of Accounting', 'INACTIVE', 3),
('IBD1124', 'C++ Programming', 'C++ Programming', 'ACTIVE', 4),
('IBD1214', 'Database', 'Database', 'ACTIVE', 4),
('IBD1313', 'Computerized Accounting', 'Computerized Accounting', 'ACTIVE', 3),
('IBD2113', 'WEB PROGRAMMING', 'WEB PROGRAMMING', 'INACTIVE', 3),
('IBD2114', 'Web Programming', 'Web Programming', 'ACTIVE', 4),
('IBD2123', 'ERP Concept', 'ERP Concept', 'ACTIVE', 3),
('IBD2124', 'ERP Concept', 'ERP Concept', 'ACTIVE', 4),
('IBD2134', 'Introduction to Database', 'Introduction to Database', 'ACTIVE', 4),
('IBD2154', 'Network Technology and Computer Security', 'Network Technology and Computer Security', 'ACTIVE', 4),
('IBD2213', 'Introduction to e-Business', 'Introduction to e-Business', 'ACTIVE', 3),
('IBD2214', 'Business Application System', 'Business Application System', 'ACTIVE', 4),
('IBD2223', 'Business Application System', 'Business Application System', 'ACTIVE', 3),
('IBD2224', 'Operating System Technology', 'Operating System Technology', 'INACTIVE', 4),
('IBD2234', 'Operating System Technology', 'Operating System Technology', 'ACTIVE', 4),
('IBD2263', 'Entrepreneurship', 'Entrepreneurship', 'ACTIVE', 3),
('IBD3113', 'Information System Development', 'Information System Development', 'ACTIVE', 3),
('IBD3114', 'Information System Development', 'Information System Development', 'ACTIVE', 4),
('IBD3164', 'Project', 'Project', 'ACTIVE', 4),
('IBS1113', 'Introduction to Operations Management', 'Introduction to Operations Management', 'ACTIVE', 3),
('IBS1213', 'Algorithm and Object-Oriented Programming', 'Algorithm and Object-Oriented Programming', 'ACTIVE', 3),
('IBS1223', 'Principles of Supply Chain', 'Principles of Supply Chain', 'ACTIVE', 3),
('IBS1224', 'Principles of Supply Chain', 'Principles of Supply Chain', 'ACTIVE', 4),
('IBS1313', 'Information System', 'Information System', 'ACTIVE', 3),
('IBS2113', 'Human Computer Interaction', 'Human Computer Interaction', 'ACTIVE', 3),
('IBS2123', 'Computer Organization', 'Computer Organization', 'ACTIVE', 3),
('IBS2133', 'Database System', 'Database System', 'ACTIVE', 3),
('IBS2143', 'Purchasing and Supply Management', 'Purchasing and Supply Management', 'ACTIVE', 3),
('IBS2144', 'Purchasing and Supply Management', 'Purchasing and Supply Management', 'ACTIVE', 4),
('IBS2213', 'Software Engineering', 'Software Engineering', 'ACTIVE', 3),
('IBS2224', 'Supply Chain Information Technology', 'Supply Chain Information Technology', 'ACTIVE', 4),
('IBS2234', 'Inventory and Control Management', 'Inventory and Control Management', 'ACTIVE', 4),
('IBS2243', 'E-Commerce', 'E-Commerce', 'ACTIVE', 3),
('IBS2273', 'Data Analysis for Enterprise', 'Data Analysis for Enterprise', 'ACTIVE', 3),
('IBS2313', 'IT Resource Management', 'IT Resource Management', 'ACTIVE', 3),
('IBS3113', 'Computer Networking', 'Computer Networking', 'ACTIVE', 3),
('IBS3124', 'Supply Chain Modelling and Analysis', 'Supply Chain Modelling and Analysis', 'ACTIVE', 4),
('IBS3134', 'Logistics and Warehouse Management', 'Logistics and Warehouse Management', 'ACTIVE', 4),
('IBS3144', 'Introduction to ERP', 'Introduction to ERP', 'ACTIVE', 4),
('IBS3153', 'Logistic and Warehouse Management', 'Logistic and Warehouse Management', 'ACTIVE', 3),
('IBS3213', 'IT Project Management', 'IT Project Management', 'ACTIVE', 3),
('IBS3224', 'Total Quality Management', 'Total Quality Management', 'ACTIVE', 4),
('IBS3234', 'Supply Chain Strategy and Implementation', 'Supply Chain Strategy and Implementation', 'ACTIVE', 4),
('IBS3313', 'IT Sales and Marketing', 'IT Sales and Marketing', 'ACTIVE', 3),
('IBS3316', 'Industrial Training', 'Industrial Training', 'ACTIVE', 6),
('IBS3323', 'Multimedia Innovation', 'Multimedia Innovation', 'ACTIVE', 3),
('IBS3333', 'Computer and Network Security', 'Computer and Network Security', 'ACTIVE', 3),
('IBS3343', 'Business Communication', 'Business Communication', 'ACTIVE', 3),
('IBS3353', 'Data Mining and Data Warehousing', 'Data Mining and Data Warehousing', 'ACTIVE', 3),
('IBS3363', 'Inventory and Control Management', 'Inventory and Control Management', 'ACTIVE', 3),
('ICC2123', 'Computer Design', 'Computer Design', 'INACTIVE', 3),
('ICM6113', 'Advanced Network Technology', 'Advanced Network Technology', 'ACTIVE', 3),
('ICM6123', 'Advanced Programming Technology', 'Advanced Programming Technology', 'ACTIVE', 3),
('ICS1113', 'Introduction to Computer Sciences', 'Introduction to Computer Sciences', 'ACTIVE', 3),
('ICS1123', 'Programming Methodology', 'Programming Methodology', 'ACTIVE', 3),
('ICS1213', 'Discrete Mathematics', 'Discrete Mathematics', 'ACTIVE', 3),
('ICS1223', 'Algorithm and Object Oriented Programming', 'Algorithm and Object Oriented Programming', 'ACTIVE', 3),
('ICS1233', 'Operating Systems', 'Operating Systems', 'ACTIVE', 3),
('ICS1243', 'Computer Organization and Assembly Language', 'Computer Organization and Assembly Language', 'ACTIVE', 3),
('ICS2112', 'Business Planning and Entrepreneurship', 'Business Planning and Entrepreneurship', 'INACTIVE', 2),
('ICS2113', 'Database System', 'Database System', 'ACTIVE', 3),
('ICS2123', 'Computer Design', 'Computer Design', 'ACTIVE', 3),
('ICS2133', 'Software Engineering', 'Software Engineering', 'ACTIVE', 3),
('ICS2143', 'Data Structure and Algorithms', 'Data Structure and Algorithms', 'ACTIVE', 3),
('ICS2153', 'Business Planning and Entrepreneurship', 'Business Planning and Entrepreneurship', 'INACTIVE', 3),
('ICS2213', 'Analysis and Design of Algorithm', 'Analysis and Design of Algorithm', 'ACTIVE', 3),
('ICS2223', 'Computer Networking', 'Computer Networking', 'ACTIVE', 3),
('ICS2233', 'Software Development', 'Software Development', 'ACTIVE', 3),
('ICS2243', 'Web Application Development', 'Web Application Development', 'ACTIVE', 3),
('ICS2253', 'Data Structure and Algorithm', 'Data Structure and Algorithm', 'ACTIVE', 3),
('ICS3113', 'Management Information System', 'Management Information System', 'ACTIVE', 3),
('ICS3123', 'Computer and Networks Security', 'Computer and Networks Security', 'ACTIVE', 3),
('ICS3133', 'Telecommunication Technology', 'Telecommunication Technology', 'ACTIVE', 3),
('ICS3143', 'INTERFACES DESIGN AND PROGRAMMING', 'Interfaces Design and Programming', 'INACTIVE', 3),
('ICS3213', 'IT Project Management', 'IT Project Management', 'ACTIVE', 3),
('ICS3223', 'Artificial Intelligence', 'Artificial Intelligence', 'ACTIVE', 3),
('ICS3233', 'Mobile Programming', 'Mobile Programming', 'ACTIVE', 3),
('ICS3234', 'Computer Graphics and Image Processing', 'Computer Graphics and Image Processing', 'INACTIVE', 4),
('ICS3243', 'Computer Graphics and Image Processing', 'Computer Graphics and Image Processing', 'ACTIVE', 3),
('ICS3253', 'Automata Theory and Computation', 'Automata Theory and Computation', 'ACTIVE', 3),
('ICS3316', 'Industrial Training', 'Industrial Training', 'ACTIVE', 6),
('IES1112', 'Excellence Ethics and Manners', 'Excellence Ethics and Manners', 'INACTIVE', 2),
('IES1122', 'Positive Habits of Effective Peoples', 'Positive Habits of Effective Peoples', 'INACTIVE', 2),
('IES1132', 'Science in the Quran', 'Science in the Quran', 'INACTIVE', 2),
('IES1152', 'Positive Thinking', 'Positive Thinking', 'INACTIVE', 2),
('IES1162', 'Human Personality and Team Building', 'Human Personality and Team Building', 'INACTIVE', 2),
('IES1172', 'Introduction to Muamalah', 'Introduction to Muamalah', 'INACTIVE', 2),
('IES3113', 'Multimedia Innovation', 'Multimedia Innovation', 'INACTIVE', 3),
('IES3122', 'Information Technology Resource Management', 'Information Technology Resource Management', 'INACTIVE', 2),
('IES3123', 'Information Technology Resources Management', 'Information Technology Resources Management', 'INACTIVE', 3),
('IES3132', 'Bussiness Communication', 'Bussiness Communication', 'INACTIVE', 2),
('IES3133', 'Business Communication', 'Business Communication', 'INACTIVE', 3),
('IES3142', 'Electronic Commerce', 'Electronic Commerce', 'INACTIVE', 2),
('IES3143', 'Electronic Commerce', 'Electronic Commerce', 'INACTIVE', 3),
('IES3152', 'Data Mining and Data Warehouse', 'Data Mining and Data Warehouse', 'INACTIVE', 2),
('IES3153', 'Data Mining and Data Warehouse', 'Data Mining and Data Warehouse', 'INACTIVE', 3),
('IES3162', 'Concurrent Programming', 'Concurrent Programming', 'INACTIVE', 2),
('IES3163', 'Concurrent Programming', 'Concurrent Programming', 'INACTIVE', 3),
('IES3172', 'IT Sales and Marketing', 'IT Sales and Marketing', 'INACTIVE', 2),
('IES3173', 'IT Sales and Marketing', 'IT Sales and Marketing', 'INACTIVE', 3),
('IES3293', 'Politic and Economy in Information Technology', 'Politic and Economy in Information Technology', 'INACTIVE', 3),
('IES3333', 'Network Computer Security', 'Network Computer Security', 'INACTIVE', 3),
('IES3343', 'Business Communication', 'Business Communication', 'INACTIVE', 3),
('IES3353', 'Data Mining and Data Warehouse', 'Data Mining and Data Warehouse', 'INACTIVE', 3),
('IID1113', 'Programming Methodology', 'Programming Methodology', 'ACTIVE', 3),
('IID1213', 'Visual Programming', 'Visual Programming', 'ACTIVE', 3),
('IID1223', 'Operations Management', 'Operations Management', 'ACTIVE', 3),
('IID1233', 'Operations Research', 'Operations Research', 'ACTIVE', 3),
('IID2113', 'Computer Organization and Assembly Language', 'Computer Organization and Assembly Language', 'ACTIVE', 3),
('IID2114', 'Operating System Technology', 'Operating System Technology', 'ACTIVE', 4),
('IID2123', 'Issues in Manufacturing Industry', 'Issues in Manufacturing Industry', 'ACTIVE', 3),
('IID2124', 'Introduction to Database', 'Introduction to Database', 'ACTIVE', 4),
('IID2133', 'Operation and Communication', 'Operation and Communication', 'ACTIVE', 3),
('IID2143', 'Introduction to Digital Logic', 'Introduction to Digital Logic', 'ACTIVE', 3),
('IID2153', 'Web Development', 'Web Development', 'ACTIVE', 3),
('IID2154', 'NETWORK TECHNOLOGY AND COMPUTER SECURITY', 'NETWORK TECHNOLOGY AND COMPUTER SECURITY', 'INACTIVE', 60),
('IID2163', 'Computer Organization and Architecture', 'Computer Organization and Architecture', 'ACTIVE', 3),
('IID2173', 'Digital Logic Design', 'Digital Logic Design', 'ACTIVE', 3),
('IID2213', 'Manufacturing Industry Issues', 'Manufacturing Industry Issues', 'INACTIVE', 3),
('IID2214', 'Network Technology and Computer Security', 'Network Technology and Computer Security', 'ACTIVE', 4),
('IID2223', 'Introduction to PLC', 'Introduction to PLC', 'ACTIVE', 3),
('IID2224', 'Information Interface Design', 'Information Interface Design', 'ACTIVE', 4),
('IID2233', 'Modelling and Simulation', 'Modelling and Simulation', 'ACTIVE', 3),
('IID2243', 'Programmable Logic Controller', 'Programmable Logic Controller', 'ACTIVE', 3),
('IID3113', 'Manufacturing Technology', 'Manufacturing Technology', 'ACTIVE', 3),
('IID3114', 'Computer Aided Design and Visualization', 'Computer Aided Design and Visualization', 'ACTIVE', 4),
('IID3123', 'Physical and Electronic Application', 'Physical and Electronic Application', 'ACTIVE', 3),
('IID3133', 'Quality Control', 'Quality Control', 'ACTIVE', 3),
('IID3143', 'Computer-Aided Design', 'Computer-Aided Design', 'ACTIVE', 3),
('IID3153', 'Inventory Control and MRP', 'Inventory Control and MRP', 'ACTIVE', 3),
('IID3163', 'Automation Systems', 'Automation Systems', 'ACTIVE', 3),
('IID3214', 'Industrial Training', 'Industrial Training', 'ACTIVE', 4),
('IIM6113', 'Information Security Management', 'Information Security Management', 'ACTIVE', 3),
('IIM6123', 'Information System Strategic Planning', 'Information System Strategic Planning', 'ACTIVE', 3),
('IIM6133', 'E-Business Technology and Management', 'E-Business Technology and Management', 'ACTIVE', 3),
('IIM6143', 'Special Topic in Information System', 'Special Topic in Information System', 'ACTIVE', 3),
('IIM6153', 'Case Studies in Information System', 'Case Studies in Information System', 'ACTIVE', 3),
('IIS2134', 'Production Operation Management', 'Production Operation Management', 'INACTIVE', 4),
('IIS4134', 'Production Operation Management', 'Production Operation Management', 'ACTIVE', 4),
('IIS4154', 'Manufacturing Planning and Control System', 'Manufacturing Planning and Control System', 'ACTIVE', 4),
('IIS4214', 'CAD - CAM', 'CAD - CAM', 'ACTIVE', 4),
('IIS4344', 'Total Quality Control', 'Total Quality Control', 'ACTIVE', 4),
('IIS4364', 'Automation Manufacturing', 'Automation Manufacturing', 'ACTIVE', 4),
('IKS1133', 'Programming Methodology', 'Programming Methodology', 'ACTIVE', 3),
('IKS1213', 'Algorithm and Object Oriented Programming', 'Algorithm and Object Oriented Programming', 'ACTIVE', 3),
('IKS1223', 'Business Fundamentals for Knowledge Manager', 'Business Fundamentals for Knowledge Manager', 'ACTIVE', 3),
('IKS1233', 'Principles of Knowledge Management', 'Principles of Knowledge Management', 'ACTIVE', 3),
('IKS1313', 'Management Information System', 'Management Information System', 'ACTIVE', 3),
('IKS2113', 'Database System', 'Database System', 'ACTIVE', 3),
('IKS2133', 'Organizational Behavior', 'Organizational Behavior', 'ACTIVE', 3),
('IKS2143', 'System Analysis and Design', 'System Analysis and Design', 'INACTIVE', 3),
('IKS2153', 'Knowledge Capture and Codification', 'Knowledge Capture and Codification', 'ACTIVE', 3),
('IKS2213', 'Software Engineering', 'Software Engineering', 'ACTIVE', 3),
('IKS2223', 'Human Computer Interaction', 'Human Computer Interaction', 'ACTIVE', 3),
('IKS2233', 'Knowledge Audit', 'Knowledge Audit', 'ACTIVE', 3),
('IKS2243', 'Knowledge Creation and Management', 'Knowledge Creation and Management', 'ACTIVE', 3),
('IKS2253', 'Knowledge Creation and Codification', 'Knowledge Creation and Codification', 'ACTIVE', 3),
('IKS2313', 'Communication Skill for K. Manager', 'Communication Skill for K. Manager', 'ACTIVE', 3),
('IKS3113', 'Computer Networking', 'Computer Networking', 'ACTIVE', 3),
('IKS3123', 'Expert System and Knowledge Engineering', 'Expert System and Knowledge Engineering', 'ACTIVE', 3),
('IKS3133', 'IT Project Management', 'IT Project Management', 'ACTIVE', 3),
('IKS3143', 'Data Warehouse and Data Mining', 'Data Warehouse and Data Mining', 'ACTIVE', 3),
('IKS3213', 'Computer and Network Security', 'Computer and Network Security', 'ACTIVE', 3),
('IKS3223', 'Measuring and Monitoring KMS', 'Measuring and Monitoring KMS', 'ACTIVE', 3),
('IKS3233', 'KMS Development and Deployment Project', 'KMS Development and Deployment Project', 'ACTIVE', 3),
('IKS3234', 'KMS Development and Deployment Project', 'KMS Development and Deployment Project', 'ACTIVE', 4),
('IKS3443', 'Managing Knowledge Worker', 'Managing Knowledge Worker', 'ACTIVE', 3),
('IMD1114', 'Introduction to Multimedia', 'Introduction to Multimedia', 'ACTIVE', 4),
('IMD1124', 'C++ Programming', 'C++ Programming', 'ACTIVE', 4),
('IMD1213', 'Discrete Mathematics', 'Discrete Mathematics', 'ACTIVE', 3),
('IMD1214', 'Graphic Modeling', 'Graphic Modeling', 'ACTIVE', 4),
('IMD1223', 'Typography', 'Typography', 'ACTIVE', 3),
('IMD1233', 'Graphic Modelling', 'Graphic Modelling', 'ACTIVE', 3),
('IMD1313', 'Multimedia Networking Technology', 'Multimedia Networking Technology', 'ACTIVE', 3),
('IMD1314', 'Multimedia Networking Technology', 'Multimedia Networking Technology', 'ACTIVE', 4),
('IMD1324', 'Introduction to Database', 'Introduction to Database', 'ACTIVE', 4),
('IMD2114', 'Multimedia Programming', 'Multimedia Programming', 'ACTIVE', 4),
('IMD2123', 'Scriptwriting and Storyboard', 'Scriptwriting and Storyboard', 'ACTIVE', 3),
('IMD2124', 'Operating System Technology', 'Operating System Technology', 'ACTIVE', 4),
('IMD2133', 'Computer Security', 'Computer Security', 'ACTIVE', 4),
('IMD2134', 'Computer Security', 'Computer Security', 'INACTIVE', 4),
('IMD2153', 'Animation Technique', 'Animation Technique', 'ACTIVE', 3),
('IMD2213', '3D Animation', '3D Animation', 'ACTIVE', 3),
('IMD2214', '3D Animation and Virtual Reality', '3D Animation and Virtual Reality', 'ACTIVE', 4),
('IMD2223', 'Audio and Video Digital Production', 'Audio and Video Digital Production', 'ACTIVE', 3),
('IMD2224', 'Audio and Video Digital Production', 'Audio and Video Digital Production', 'ACTIVE', 4),
('IMD2234', 'Information and User Interface Design', 'Information and User Interface Design', 'ACTIVE', 4),
('IMD2244', 'Computer Hardware Technology', 'Computer Hardware Technology', 'ACTIVE', 4),
('IMD2312', 'Multimedia Project Development 1', 'Multimedia Project Development 1', 'ACTIVE', 2),
('IMD3113', 'Multimedia Project Development 2', 'Multimedia Project Development 2', 'ACTIVE', 3),
('IMD3122', 'Specialize Industrial Multimedia Application', 'Specialize Industrial Multimedia Application', 'ACTIVE', 2),
('IMM6113', 'Advanced Multimedia Technology', 'Advanced Multimedia Technology', 'ACTIVE', 3),
('IMM6123', 'Managing Multimedia System', 'Managing Multimedia System', 'ACTIVE', 3),
('IMM6133', 'Computer Graphics, Visualization and Animation', 'Computer Graphics, Visualization and Animation', 'ACTIVE', 3),
('IMM6143', 'Special Topic in Multimedia', 'Special Topic in Multimedia', 'ACTIVE', 3),
('IMM6153', 'Case Studies in Multimedia', 'Case Studies in Multimedia', 'ACTIVE', 3),
('IMS1111', 'Introduction to HTML', 'Introduction to HTML', 'ACTIVE', 1),
('IMS1113', 'Interactive Multimedia', 'Interactive Multimedia', 'ACTIVE', 3),
('IMS1213', 'Concept of Programming', 'Concept of Programming', 'ACTIVE', 3),
('IMS1223', 'Interaction Design for Multimedia', 'Interaction Design for Multimedia', 'ACTIVE', 3),
('IMS1233', 'Digital Image and Photography Creation', 'Digital Image and Photography Creation', 'ACTIVE', 3),
('IMS1243', 'Design Fundamentals', 'Design Fundamentals', 'ACTIVE', 3),
('IMS1253', 'Drawing Technique', 'Drawing Technique', 'ACTIVE', 3),
('IMS1313', 'Information System', 'Information System', 'ACTIVE', 3),
('IMS2113', 'Computer Graphic and Image Processing', 'Computer Graphic and Image Processing', 'ACTIVE', 3),
('IMS2123', 'Computer Organization', 'Computer Organization', 'ACTIVE', 3),
('IMS2133', 'Database System', 'Database System', 'ACTIVE', 3),
('IMS2143', 'Digital Audio Production', 'Digital Audio Production', 'ACTIVE', 3),
('IMS2213', 'Animation Technique', 'Animation Technique', 'ACTIVE', 3),
('IMS2223', 'Human-Computer Interaction', 'Human-Computer Interaction', 'ACTIVE', 3),
('IMS2233', 'Digital Video Production', 'Digital Video Production', 'ACTIVE', 3),
('IMS2243', '3D and Virtual Reality', '3D and Virtual Reality', 'ACTIVE', 3),
('IMS2263', 'Digital Audio and Video Production', 'Digital Audio and Video Production', 'ACTIVE', 3),
('IMS2273', '3D Modelling and Animation', '3D Modelling and Animation', 'ACTIVE', 3),
('IMS3113', 'Computer Networking', 'Computer Networking', 'ACTIVE', 3),
('IMS3123', 'Web Application Development', 'Web Application Development', 'ACTIVE', 3),
('IMS3133', 'Multimedia Production Management', 'Multimedia Production Management', 'ACTIVE', 3),
('IMS3143', 'Multimedia''s Evolution Industry', 'Multimedia''s Evolution Industry', 'ACTIVE', 3),
('IMS3152', 'Multimedia Project 1', 'Multimedia Project 1', 'ACTIVE', 2),
('IMS3163', 'Desktop Publishing', 'Desktop Publishing', 'ACTIVE', 3),
('IMS3173', 'Virtual Reality', 'Virtual Reality', 'ACTIVE', 3),
('IMS3213', 'Computer and Network Security', 'Computer and Network Security', 'ACTIVE', 3),
('IMS3223', 'Software Engineering', 'Software Engineering', 'ACTIVE', 3),
('IMS3233', 'Critical Issues in Multimedia', 'Critical Issues in Multimedia', 'ACTIVE', 3),
('IMS3244', 'Multimedia Project 2', 'Multimedia Project 2', 'ACTIVE', 4),
('IMS3253', 'Critical Issues & Evolution in Multimedia', 'Critical Issues & Evolution in Multimedia', 'ACTIVE', 3),
('IMS3263', 'Multimedia Broadcasting Technology', 'Multimedia Broadcasting Technology', 'ACTIVE', 3),
('IMS3273', 'Game Design Fundamental', 'Game Design Fundamental', 'ACTIVE', 3),
('IMS3283', 'Typography for Multimedia', 'Typography for Multimedia', 'ACTIVE', 3),
('IMS8990', 'Intro to Games', 'Intro to Games', 'INACTIVE', 3),
('IPM6113', 'Project Management Leadership and Organization', 'Project Management Leadership and Organization', 'ACTIVE', 3),
('IPM6123', 'Effective Project Management', 'Effective Project Management', 'ACTIVE', 3),
('IPM6133', 'Project Change Management', 'Project Change Management', 'ACTIVE', 3),
('IPM6143', 'Special Topic in Project Management', 'Special Topic in Project Management', 'ACTIVE', 3),
('IPM6153', 'Case Studies in Project Management', 'Case Studies in Project Management', 'ACTIVE', 3),
('IPS4314', 'Analysis and Design Database System', 'Analysis and Design Database System', 'ACTIVE', 4),
('IPS4324', 'System Information Strategic Planning', 'System Information Strategic Planning', 'ACTIVE', 4),
('IPS4334', 'Data Mining and Data Warehouse', 'Data Mining and Data Warehouse', 'ACTIVE', 4),
('IPS4344', 'Knowledge Management System', 'Knowledge Management System', 'ACTIVE', 4),
('IPS4354', 'Enterprise Application Integration', 'Enterprise Application Integration', 'ACTIVE', 4),
('ISC2153', 'Business Planning and Entrepreneurship', 'Business Planning and Entrepreneurship', 'ACTIVE', 3),
('ISM1113', 'Software Engineering for Real-Time System', 'Software Engineering for Real-Time System', 'INACTIVE', 3),
('ISM1123', 'Advanced Computer Programming', 'Advanced Computer Programming', 'INACTIVE', 3),
('ISM1133', 'Software Engineering for Real-Time System', 'Software Engineering for Real-Time System', 'INACTIVE', 3),
('ISM1143', 'Mobile Computing', 'Mobile Computing', 'INACTIVE', 3),
('ISM1153', 'Object-Oriented Software Engineering', 'Object-Oriented Software Engineering', 'INACTIVE', 3),
('ISM1163', 'Software Project Management', 'Software Project Management', 'INACTIVE', 3),
('ISM1172', 'Software Engineering Seminar', 'Software Engineering Seminar', 'INACTIVE', 2),
('ISM1184', 'Software Development', 'Software Development', 'INACTIVE', 4),
('ISM1193', 'Professional Issues in Software Engineering', 'Professional Issues in Software Engineering', 'INACTIVE', 3),
('ISM1213', 'Software Engineering Process', 'Software Engineering Process', 'INACTIVE', 3),
('ISM1223', 'Software Testing and Quality Assurance', 'Software Testing and Quality Assurance', 'INACTIVE', 3),
('ISM1226', 'Software Engineering Project', 'Software Engineering Project', 'INACTIVE', 6),
('ISM1306', 'Software Engineering Masters Project', 'Software Engineering Masters Project', 'INACTIVE', 6),
('ISM1313', 'Software Testing and Quality Assurance', 'Software Testing and Quality Assurance', 'INACTIVE', 3),
('ISM6113', 'Software Engineering Process', 'Software Engineering Process', 'ACTIVE', 3),
('ISM6123', 'Software Requirements and Elicitation', 'Software Requirements and Elicitation', 'ACTIVE', 3),
('ISM6133', 'Software Testing and Quality Assurance', 'Software Testing and Quality Assurance', 'ACTIVE', 3),
('ISM6143', 'Software Design and Architectural', 'Software Design and Architectural', 'ACTIVE', 3),
('ISM6153', 'Software Project Management', 'Software Project Management', 'ACTIVE', 3),
('ISM6173', 'Advanced Topics in Software Engineering', 'Advanced Topics in Software Engineering', 'ACTIVE', 3),
('ISM6213', 'Software Engineering Professional Issues', 'Software Engineering Professional Issues', 'ACTIVE', 3),
('ISM6223', 'Advanced Topics in Software Engineering', 'Advanced Topics in Software Engineering', 'ACTIVE', 3),
('ISM6233', 'Software Engineering Professional Issues', 'Software Engineering Professional Issues', 'ACTIVE', 3),
('ISS1123', 'Introduction to Software Engineering', 'Introduction to Software Engineering', 'ACTIVE', 3),
('ISS1133', 'Programming Methodology', 'Programming Methodology', 'ACTIVE', 3),
('ISS1213', 'Computer Networking', 'Computer Networking', 'ACTIVE', 3),
('ISS1223', 'Introduction to Data Structure and Application', 'Introduction to Data Structure and Application', 'ACTIVE', 3),
('ISS1233', 'Computer Design and Architecture', 'Computer Design and Architecture', 'ACTIVE', 3),
('ISS1243', 'Software Modeling Technique', 'Software Modeling Technique', 'ACTIVE', 3),
('ISS2113', 'Software Requirement', 'Software Requirement', 'ACTIVE', 3),
('ISS2123', 'Database System', 'Database System', 'ACTIVE', 3),
('ISS2133', 'Software Design', 'Software Design', 'ACTIVE', 3),
('ISS2143', 'Algorithm and Object Oriented Programming', 'Algorithm and Object Oriented Programming', 'ACTIVE', 3),
('ISS2153', 'Computer and Network Security', 'Computer and Network Security', 'ACTIVE', 3),
('ISS2213', 'Discrete Mathematics', 'Discrete Mathematics', 'ACTIVE', 3),
('ISS2223', 'HTML Programming', 'HTML Programming', 'ACTIVE', 3),
('ISS2233', 'Computer Graphics', 'Computer Graphics', 'ACTIVE', 3),
('ISS2243', 'Web Application Development', 'Web Application Development', 'ACTIVE', 3),
('ISS2253', 'Software Construction', 'Software Construction', 'ACTIVE', 3),
('ISS2263', 'Software Design and Architecture', 'Software Design and Architecture', 'ACTIVE', 3),
('ISS2273', 'Software Quality Assurance', 'Software Quality Assurance', 'ACTIVE', 3),
('ISS2283', 'SOFTWARE TESTING', 'SOFTWARE TESTING', 'ACTIVE', 3),
('ISS2313', 'Software Testing and Quality', 'Software Testing and Quality', 'ACTIVE', 3),
('ISS3123', 'Interface Design and Programming', 'Interface Design and Programming', 'ACTIVE', 3),
('ISS3133', 'IT Project Management', 'IT Project Management', 'ACTIVE', 3),
('ISS3143', 'Software Engineering Codes of Ethics', 'Software Engineering Codes of Ethics', 'ACTIVE', 3),
('ISS3153', 'Project 1', 'Project 1', 'ACTIVE', 3),
('ISS3163', 'Software Maintenance and Evolution', 'Software Maintenance and Evolution', 'ACTIVE', 3),
('ISS3213', 'Information System', 'Information System', 'ACTIVE', 3),
('ISS3223', 'Artificial Intelligance', 'Artificial Intelligance', 'ACTIVE', 3),
('ISS3233', 'Software Process Improvement', 'Software Process Improvement', 'ACTIVE', 3),
('ISS3243', 'Project 2', 'Project 2', 'ACTIVE', 3),
('ISS3316', 'Industrial Training', 'Industrial Training', 'ACTIVE', 6),
('ITA1113', 'Programming Methodology 1', 'Programming Methodology 1', 'ACTIVE', 3),
('ITA1114', 'Computer Application 1', 'Computer Application 1', 'INACTIVE', 4),
('ITA1124', 'Computer Application 2', 'Computer Application 2', 'INACTIVE', 4),
('ITA1134', 'Computer Programming', 'Computer Programming', 'INACTIVE', 4),
('ITA1223', 'Database System', 'Database System', 'ACTIVE', 3),
('ITA1224', 'Computer Programming 2', 'Computer Programming 2', 'INACTIVE', 4),
('ITA1233', 'Programming Methodology II', 'Programming Methodology II', 'ACTIVE', 3),
('ITA1243', 'Computer Fundamental', 'Computer Fundamental', 'ACTIVE', 3),
('ITA1323', 'Information Systems', 'Information Systems', 'ACTIVE', 3),
('ITA1324', 'Computer Application 2', 'Computer Application 2', 'INACTIVE', 4),
('ITA1334', 'Computer Programming', 'Computer Programming', 'INACTIVE', 4),
('ITD1113', 'Problem Solving Technique', 'Problem Solving Technique', 'ACTIVE', 3),
('ITD1114', 'Computer Application 1', 'Computer Application 1', 'ACTIVE', 4),
('ITD1124', 'C++ Programming', 'C++ Programming', 'INACTIVE', 4),
('ITD1134', 'Computer Programming', 'Computer Programming', 'ACTIVE', 4),
('ITD1213', 'Object Oriented Programming', 'Object Oriented Programming', 'ACTIVE', 3),
('ITD1324', 'Computer Application 2', 'Computer Application 2', 'ACTIVE', 4),
('ITD1334', 'Computer Programming', 'Computer Programming', 'ACTIVE', 4),
('ITD1343', 'Introduction to Networking', 'Introduction to Networking', 'ACTIVE', 3),
('ITD2113', 'Revolution and Development of ICT', 'Revolution and Development of ICT', 'INACTIVE', 3),
('ITD2123', 'Computer Hardware Technology', 'Computer Hardware Technology', 'ACTIVE', 3),
('ITD2124', 'Computer Hardware Technology', 'Computer Hardware Technology', 'ACTIVE', 4),
('ITD2133', 'IT System Development', 'IT System Development', 'ACTIVE', 3),
('ITD2134', 'Introduction to Database', 'Introduction to Database', 'ACTIVE', 4),
('ITD2143', 'Discrete Mathematics', 'Discrete Mathematics', 'ACTIVE', 3),
('ITD2144', 'Introduction to Multimedia', 'Introduction to Multimedia', 'ACTIVE', 4),
('ITD2153', 'System Administration', 'System Administration', 'ACTIVE', 3),
('ITD2154', 'System Administration', 'System Administration', 'ACTIVE', 4),
('ITD2211', 'Visual Programming', 'Visual Programming', 'ACTIVE', 1),
('ITD2214', 'Operating System Technology', 'Operating System Technology', 'ACTIVE', 4),
('ITD2223', 'Network Technology', 'Network Technology', 'ACTIVE', 3),
('ITD2224', 'Network Technology', 'Network Technology', 'ACTIVE', 4),
('ITD2233', 'Foundation of Internet', 'Foundation of Internet', 'ACTIVE', 3),
('ITD2243', 'Object Oriented Analysis and Design', 'Object Oriented Analysis and Design', 'ACTIVE', 3),
('ITD2244', 'Foundation of Database Administration', 'Foundation of Database Administration', 'ACTIVE', 4),
('ITD2253', 'Computer Server Administration', 'Computer Server Administration', 'ACTIVE', 3),
('ITD2264', 'Multimedia Programming', 'Multimedia Programming', 'ACTIVE', 4),
('ITD2273', 'IT System Development', 'IT System Development', 'ACTIVE', 3),
('ITD2323', 'Computer Security', 'Computer Security', 'ACTIVE', 3),
('ITD2324', 'Software Engineering', 'Software Engineering', 'ACTIVE', 4),
('ITD2333', 'Human Computer Interface', 'Human Computer Interface', 'ACTIVE', 3),
('ITD2334', 'Information and User Interface Design', 'Information and User Interface Design', 'ACTIVE', 4),
('ITD2343', 'Ethics in Computing', 'Ethics in Computing', 'ACTIVE', 3),
('ITD3114', 'Network Principal and System Administration', 'Network Principal and System Administration', 'ACTIVE', 4),
('ITD3124', 'Network Operation and Protocol', 'Network Operation and Protocol', 'ACTIVE', 4),
('ITD3134', 'Network Operation and Maintenance', 'Network Operation and Maintenance', 'ACTIVE', 4),
('ITD3144', 'HTML Programming', 'HTML Programming', 'ACTIVE', 4),
('ITD3154', 'XML Programming', 'XML Programming', 'ACTIVE', 4),
('ITD3162', 'Project Planning', 'Project Planning', 'ACTIVE', 2),
('ITD3164', 'Project', 'Project', 'ACTIVE', 4),
('ITD3174', 'HTML Programming', 'HTML Programming', 'ACTIVE', 4),
('ITD3184', 'XML Technology', 'XML Technology', 'ACTIVE', 4),
('ITD3193', 'Web Application Development', 'Web Application Development', 'ACTIVE', 3),
('ITD3194', 'Web Application Development', 'Web Application Development', 'ACTIVE', 4),
('ITD3213', 'LAN and Switching', 'LAN and Switching', 'ACTIVE', 3),
('ITD3214', 'Router and WAN Connection', 'Router and WAN Connection', 'ACTIVE', 4),
('ITD3224', 'Routing and Switching', 'Routing and Switching', 'ACTIVE', 4),
('ITD3233', 'Network Design and Support', 'Network Design and Support', 'ACTIVE', 3),
('ITD3234', 'Network Design and Support', 'Network Design and Support', 'ACTIVE', 4),
('ITD3254', 'Web Design', 'Web Design', 'ACTIVE', 4),
('ITM1113', 'Introduction to ICT and System Design', 'Introduction to ICT and System Design', 'INACTIVE', 3),
('ITM1123', 'Object-Oriented Programming', 'Object-Oriented Programming', 'INACTIVE', 3),
('ITM1133', 'Human Computer Interaction', 'Human Computer Interaction', 'INACTIVE', 6),
('ITM1233', 'Knowledge Management', 'Knowledge Management', 'INACTIVE', 3),
('ITM2113', 'Software Engineering', 'Software Engineering', 'ACTIVE', 3),
('ITM2123', 'Research Methodology', 'Research Methodology', 'INACTIVE', 3),
('ITM2133', 'Information Technology Project Management', 'Information Technology Project Management', 'INACTIVE', 3),
('ITM2143', 'Human Computer Interaction', 'Human Computer Interaction', 'INACTIVE', 3),
('ITM2153', 'Web-Based Information System', 'Web-Based Information System', 'INACTIVE', 3),
('ITM2163', 'Knowledge Management', 'Knowledge Management', 'INACTIVE', 3),
('ITM2196', 'Information Technology Masters Project', 'Information Technology Masters Project', 'ACTIVE', 6),
('ITM3113', 'IT Project Leadership and Stakeholder Management', 'IT Project Leadership and Stakeholder Management', 'ACTIVE', 3),
('ITM3123', 'System Integration Project Management', 'System Integration Project Management', 'ACTIVE', 3),
('ITM3133', 'IT Project Procurement and Contract Management', 'IT Project Procurement and Contract Management', 'ACTIVE', 3),
('ITM3143', 'Establishment of Project Management Office', 'Establishment of Project Management Office', 'ACTIVE', 3),
('ITM4113', 'Theory and Instructional Design', 'Theory and Instructional Design', 'ACTIVE', 3),
('ITM4123', 'Design and Multimedia Courseware Development', 'Design and Multimedia Courseware Development', 'ACTIVE', 3),
('ITM4133', 'ICT Issues in Education', 'ICT Issues in Education', 'INACTIVE', 3),
('ITM4143', 'Electronic Learning', 'Electronic Learning', 'INACTIVE', 3),
('ITM5113', 'Software Engineering', 'Software Engineering', 'INACTIVE', 3),
('ITM5123', 'Research Methodology', 'Research Methodology', 'INACTIVE', 3),
('ITM5133', 'Information Security Management', 'Information Security Management', 'ACTIVE', 3),
('ITM5143', 'Information System Strategic Planning Consultation', 'Information System Strategic Planning Consultation', 'INACTIVE', 3),
('ITM5213', 'IT Project Management', 'IT Project Management', 'INACTIVE', 3),
('ITM5223', 'B2B Electronic Commerce', 'B2B Electronic Commerce', 'ACTIVE', 3),
('ITM5233', 'Enterprise System Architecture and E-Application', 'Enterprise System Architecture and E-Application', 'ACTIVE', 3),
('ITM6110', 'Information Technology Dissertation', 'Information Technology Dissertation', 'ACTIVE', 10),
('ITM6113', 'Computing and System Technology', 'Computing and System Technology', 'ACTIVE', 3),
('ITM6123', 'Information System Analysis and Design', 'Information System Analysis and Design', 'ACTIVE', 3),
('ITM6133', 'IT Project Management', 'IT Project Management', 'ACTIVE', 3),
('ITM6143', 'Issues for IT Professional Practices', 'Issues for IT Professional Practices', 'ACTIVE', 3),
('ITM6153', 'IT Resource Management', 'IT Resource Management', 'ACTIVE', 3),
('ITM6163', 'Special Topics in IT', 'Special Topics in IT', 'ACTIVE', 3),
('ITM6173', 'Case Study in IT', 'Case Study in IT', 'ACTIVE', 3),
('ITM6413', 'Information Security Management', 'Information Security Management', 'ACTIVE', 3),
('ITM6423', 'Information System Strategic Planning Consultation', 'Information System Strategic Planning Consultation', 'ACTIVE', 3),
('ITM6443', 'Enterprise System Architecture and E-Application', 'Enterprise System Architecture and E-Application', 'ACTIVE', 3),
('ITM6613', 'Multimedia Technology', 'Multimedia Technology', 'ACTIVE', 3),
('ITM6623', 'Managing Multimedia System', 'Managing Multimedia System', 'ACTIVE', 3),
('ITM6633', 'Multimedia Application Development', 'Multimedia Application Development', 'ACTIVE', 3),
('ITM6643', 'Multimedia  Management', 'Multimedia  Management', 'ACTIVE', 3),
('ITS1114', 'Computer Application 1', 'Computer Application 1', 'INACTIVE', 4),
('ITS1124', 'Problem Solving Algorithm', 'Problem Solving Algorithm', 'ACTIVE', 4),
('ITS1134', 'Computer Programming', 'Computer Programming', 'ACTIVE', 4),
('ITS1213', 'Introduction to Information Technology', 'Introduction to Information Technology', 'ACTIVE', 3),
('ITS1224', 'Computer Application 2', 'Computer Application 2', 'INACTIVE', 4),
('ITS1233', 'Visual Programming', 'Visual Programming', 'ACTIVE', 3),
('ITS1313', 'Algorisma dan Pemprograman Berorientasi Objek', 'Algorisma dan Pemprograman Berorientasi Objek', 'INACTIVE', 3),
('ITS1314', 'Introduction to Information Technology', 'Introduction to Information Technology', 'ACTIVE', 4),
('ITS1322', 'HTML Programming', 'HTML Programming', 'ACTIVE', 2),
('ITS1324', 'Computer Application 2', 'Computer Application 2', 'INACTIVE', 4),
('ITS2114', 'REVOLUSI TEKNOLOGI MAKLUMAT', 'Revolusi Teknologi Maklumat', 'INACTIVE', 4),
('ITS2123', 'Computer Design', 'Computer Design', 'INACTIVE', 3),
('ITS2124', 'Data Structure and Algorithm', 'Data Structure and Algorithm', 'ACTIVE', 4),
('ITS2134', 'SISTEM MAKLUMAT', 'Sistem Maklumat', 'INACTIVE', 4),
('ITS2144', 'ORGANISASI KOMPUTER', 'Organisasi Komputer', 'INACTIVE', 4),
('ITS2234', 'KEJURUTERAAN PERISIAN', 'Kejuruteraan Perisian', 'INACTIVE', 4),
('ITS2243', 'Object Oriented Analysis and Design', 'Object Oriented Analysis and Design', 'ACTIVE', 3),
('ITS2254', 'Introduction to Database', 'Introduction to Database', 'ACTIVE', 4),
('ITS2314', 'Politic and Economy in Information Technology', 'Politic and Economy in Information Technology', 'ACTIVE', 4),
('ITS2324', 'Web Based Information System', 'Web Based Information System', 'ACTIVE', 4),
('ITS2334', 'EKSPLOITASI DUNIA MAKLUMAT', 'Eksploitasi Dunia Maklumat', 'INACTIVE', 4),
('ITS3113', 'Operational Research', 'Operational Research', 'ACTIVE', 3),
('ITS3114', 'Artificial Intelligence and Expert System', 'Artificial Intelligence and Expert System', 'ACTIVE', 4),
('ITS3124', 'IT Resourse Management', 'IT Resourse Management', 'ACTIVE', 4),
('ITS3134', 'Database System', 'Database System', 'ACTIVE', 4),
('ITS3214', 'Human Computer Interaction', 'Human Computer Interaction', 'ACTIVE', 4),
('ITS3223', 'Enterprise Information Architecture', 'Enterprise Information Architecture', 'ACTIVE', 3),
('ITS3233', 'Business Intelligent', 'Business Intelligent', 'ACTIVE', 3),
('ITS3243', 'ICT Driven Revolution to Society', 'ICT Driven Revolution to Society', 'ACTIVE', 3),
('ITS3316', 'Industrial Training', 'Industrial Training', 'ACTIVE', 6),
('ITS3318', 'IT Industrial Training', 'IT Industrial Training', 'INACTIVE', 8),
('ITS4113', 'Production Operation Management', 'Production Operation Management', 'ACTIVE', 3),
('ITS4114', 'Computer Design, Operation, Networking', 'Computer Design, Operation, Networking', 'ACTIVE', 4),
('ITS4123', 'Total Quality Control', 'Total Quality Control', 'ACTIVE', 3),
('ITS4124', 'IT Project Management', 'IT Project Management', 'ACTIVE', 4),
('ITS4133', 'CAD-CAM System Management', 'CAD-CAM System Management', 'ACTIVE', 3),
('ITS4134', 'Enterprise Information Architecture', 'Enterprise Information Architecture', 'ACTIVE', 4),
('ITS4143', 'Automation Manufacturing', 'Automation Manufacturing', 'ACTIVE', 3),
('ITS4144', 'E-Commerce', 'E-Commerce', 'ACTIVE', 4),
('ITS4153', 'Manufacturing Planning and Control System', 'Manufacturing Planning and Control System', 'ACTIVE', 3),
('ITS4223', 'Strategic Information System Planning', 'Strategic Information System Planning', 'ACTIVE', 3),
('ITS4243', 'Knowledge Management System', 'Knowledge Management System', 'ACTIVE', 3),
('ITS4253', 'Enterprise Application Integration', 'Enterprise Application Integration', 'ACTIVE', 3),
('ITS4263', 'Expert System', 'Expert System', 'ACTIVE', 3),
('ITS4334', 'Data Mining and Data Warehousing', 'Data Mining and Data Warehousing', 'ACTIVE', 4),
('ITS4354', 'Enterprise Application Integration', 'Enterprise Application Integration', 'ACTIVE', 4),
('IWD1123', 'Introduction to Mobile Technology', 'Introduction to Mobile Technology', 'ACTIVE', 3),
('IWD1124', 'C++ Programming', 'C++ Programming', 'ACTIVE', 4),
('IWD2113', 'Introduction to Mobile Programming', 'Introduction to Mobile Programming', 'ACTIVE', 3),
('IWD2114', 'Object Oriented Programming', 'Object Oriented Programming', 'ACTIVE', 4),
('IWD2134', 'Introduction to Database', 'Introduction to Database', 'ACTIVE', 4),
('IWD2144', 'Introduction to Multimedia', 'Introduction to Multimedia', 'ACTIVE', 4),
('IWD2213', 'Mobile Data Communication', 'Mobile Data Communication', 'ACTIVE', 3),
('IWD2214', 'Operating System Technology', 'Operating System Technology', 'ACTIVE', 4),
('IWD2223', 'Mobile Database', 'Mobile Database', 'ACTIVE', 3),
('IWD2224', 'Network Technology', 'Network Technology', 'ACTIVE', 4),
('IWD2233', 'Mobile Programming', 'Mobile Programming', 'ACTIVE', 3),
('IWD2243', 'Wireless and Mobile Security', 'Wireless and Mobile Security', 'ACTIVE', 3),
('IWD2312', 'Mobile System Design', 'Mobile System Design', 'ACTIVE', 2),
('IWD2323', 'Computer Security', 'Computer Security', 'ACTIVE', 3),
('IWD2334', 'Information and User Interface Design', 'Information and User Interface Design', 'ACTIVE', 4),
('IWD3113', 'Mobile System Implementation', 'Mobile System Implementation', 'ACTIVE', 3),
('IWD3323', 'Mobile Commerce', 'Mobile Commerce', 'ACTIVE', 3),
('IXA1113', 'Problem Solving Technique', 'Problem Solving Technique', 'ACTIVE', 3),
('IXA1114', 'Computer Application 1', 'Computer Application 1', 'ACTIVE', 4),
('IXA1124', 'Introduction to Computer and Application', 'Introduction to Computer and Application', 'ACTIVE', 4),
('IXA1213', 'Introduction to Information System', 'Introduction to Information System', 'ACTIVE', 3),
('IXA1214', 'Introduction To Multimedia', 'Introduction To Multimedia', 'ACTIVE', 4),
('IXA1223', 'Database System', 'Database System', 'ACTIVE', 3),
('IXA1224', 'Introduction to Database', 'Introduction to Database', 'ACTIVE', 4),
('IXA1234', 'C++ Programming', 'C++ Programming', 'ACTIVE', 4),
('IXA1314', 'Introduction to Computer and Network Maintenance', 'Introduction to Computer and Network Maintenance', 'ACTIVE', 4),
('IXA1324', 'Computer Application 2', 'Computer Application 2', 'ACTIVE', 4),
('IXA1334', 'Computer Programming', 'Computer Programming', 'ACTIVE', 4),
('IXA1344', 'Basic Web Development', 'Basic Web Development', 'ACTIVE', 4),
('IXD1113', 'Computer and Information Processing', 'Computer and Information Processing', 'ACTIVE', 3),
('IXD1114', 'Computer Application 1', 'Computer Application 1', 'ACTIVE', 4),
('IXD1123', 'Computer Application For Industry', 'Computer Application For Industry', 'ACTIVE', 3),
('IXD2134', 'Introduction to Database', 'Introduction to Database', 'ACTIVE', 4),
('IXS1114', 'Computer Application 1', 'Computer Application 1', 'ACTIVE', 4),
('IXS1123', 'Programming Methodology', 'Programming Methodology', 'ACTIVE', 3),
('IXS1124', 'Programming Methodology', 'Programming Methodology', 'ACTIVE', 4);
INSERT INTO `course_main` (`course_id`, `course_desc_short`, `course_desc_long`, `course_status`, `course_credit_hours`) VALUES
('IXS1132', 'Science in the Qur''an', 'Science in the Qur''an', 'ACTIVE', 2),
('IXS1134', 'Computer Application', 'Computer Application', 'ACTIVE', 4),
('IXS1144', 'Computer Application', 'Computer Application', 'ACTIVE', 4),
('IXS1162', 'Human Personality and Team Building', 'Human Personality and Team Building', 'ACTIVE', 2),
('IXS1313', 'Object Oriented Programming and Algorithm', 'Object Oriented Programming and Algorithm', 'ACTIVE', 3),
('IXS1314', 'Introduction to Information Technology', 'Introduction to Information Technology', 'ACTIVE', 4),
('IXS1324', 'Computer Application 2', 'Computer Application 2', 'ACTIVE', 4),
('IXS2123', 'Introduction to Data Structure', 'Introduction to Data Structure', 'ACTIVE', 3),
('IXS2124', 'Introduction to Data Structure', 'Introduction to Data Structure', 'ACTIVE', 4),
('IXS2234', 'Software Engineering', 'Software Engineering', 'ACTIVE', 4),
('IXS2253', 'Introduction to Database', 'Introduction to Database', 'ACTIVE', 3),
('IXS2254', 'Introduction to Database', 'Introduction to Database', 'ACTIVE', 4),
('IXS2324', 'Web Based Information System', 'Web Based Information System', 'ACTIVE', 4),
('IXS3124', 'Introduction to Multimedia', 'Introduction to Multimedia', 'ACTIVE', 4),
('IXS3333', 'Database Methodology', 'Database Methodology', 'ACTIVE', 3),
('IXS4114', 'Computer Networking', 'Computer Networking', 'ACTIVE', 4),
('IXS4334', 'Data Warehouse and Data Mining', 'Data Warehouse and Data Mining', 'ACTIVE', 4),
('IXS4344', 'Data  Mining and Data Warehouse', 'Data  Mining and Data Warehouse', 'ACTIVE', 4),
('IXS9994', 'Programming Methodology', 'Programming Methodology', 'ACTIVE', 4),
('MPW1113', 'Bahasa Kebangsaan A', 'Bahasa Kebangsaan A', 'ACTIVE', 3),
('MPW1123', 'Bahasa Kebangsaan B', 'Bahasa Kebangsaan B', 'ACTIVE', 3),
('MPW2123', 'Bahasa Kebaangsan', 'Bahasa Kebaangsan', 'ACTIVE', 3),
('MPW2133', 'Pengajian Malaysia', 'Pengajian Malaysia', 'ACTIVE', 3),
('MPW2143', 'Pengajian Islam', 'Pengajian Islam', 'ACTIVE', 3),
('MPW2153', 'Pendidikan Moral', 'Pendidikan Moral', 'ACTIVE', 3),
('SFA1122', 'Analytical Skills and Critical Thinking', 'Analytical Skills and Critical Thinking', 'ACTIVE', 2),
('ZES1133', 'Technical English 1', 'Technical English 1', 'ACTIVE', 3),
('ZES1243', 'Technical English 2', 'Technical English 2', 'ACTIVE', 3),
('ZEU1113', 'Proficiency English 1', 'Proficiency English 1', 'ACTIVE', 3),
('ZEU1193', 'Preparatory English', 'Remedial English', 'ACTIVE', 3),
('ZEU1212', 'Japanese 1', 'Japanese 1', 'ACTIVE', 2),
('ZEU1222', 'Mandarin 1', 'Mandarin 1', 'ACTIVE', 2),
('ZEU1223', 'Proficiency Englsih 2', 'Proficiency English 2', 'ACTIVE', 3),
('ZEU1232', 'Arabic 1', 'Arabic 1', 'ACTIVE', 2),
('ZEU1242', 'French 1', 'French 1', 'ACTIVE', 2),
('ZKU1112', 'Kokurikulum', 'Kokurikulum', 'ACTIVE', 2),
('ZLU1212', 'Japanese 1', 'Japanese 1', 'ACTIVE', 2),
('ZLU1222', 'Mandarin 1', 'Mandarin 1', 'ACTIVE', 2),
('ZLU1242', 'French 1', 'French 1', 'ACTIVE', 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_registration`
--
-- Creation: Dec 21, 2013 at 04:51 AM
--

DROP TABLE IF EXISTS `course_registration`;
CREATE TABLE IF NOT EXISTS `course_registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseregis_semester_id` char(5) NOT NULL,
  `courseregis_course_id` char(7) NOT NULL,
  `courseregis_stud_id` char(10) NOT NULL,
  `courseregis_grade` char(3) NOT NULL,
  `courseregis_grade_point` char(4) NOT NULL,
  `courseregis_drop_status` varchar(35) DEFAULT NULL,
  `courseregis_repeat_equi` char(7) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courseregis_course_id` (`courseregis_course_id`),
  KEY `courseregis_stud_id` (`courseregis_stud_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- RELATIONS FOR TABLE `course_registration`:
--   `courseregis_course_id`
--       `course_main` -> `course_id`
--   `courseregis_stud_id`
--       `student_profile` -> `stud_id`
--

--
-- Dumping data for table `course_registration`
--

INSERT INTO `course_registration` (`id`, `courseregis_semester_id`, `courseregis_course_id`, `courseregis_stud_id`, `courseregis_grade`, `courseregis_grade_point`, `courseregis_drop_status`, `courseregis_repeat_equi`) VALUES
(1, '21011', 'IAS1123', '4102007651', 'A', '4', '', ''),
(2, '21011', 'IAS1213', '4102007651', 'A', '4', '', ''),
(3, '21011', 'IAS1113', '4102007651', 'A', '4', '', ''),
(4, '21011', 'FMS1113', '4102007651', 'A', '4', '', ''),
(5, '21011', 'ISS1123', '4102007651', 'A-', '3.67', '', ''),
(6, '21011', 'ZES1133', '4102007651', 'A', '4', '', ''),
(7, '31011', 'FMS1323', '4102007651', 'A', '4', '', ''),
(8, '31011', 'IAS1162', '4102007651', 'A', '4', '', ''),
(9, '31011', 'ZES1243', '4102007651', 'A-', '3.67', '', ''),
(10, '11112', 'ISS2113', '4102007651', 'B', '3', '', ''),
(11, '11112', 'IAS1313', '4102007651', 'A', '4', '', ''),
(12, '11112', 'IAS2123', '4102007651', 'B+', '3.5', '', ''),
(13, '11112', 'ZKU1112', '4102007651', 'A', '4', '', ''),
(14, '11112', 'IAS1233', '4102007651', 'B+', '3.5', '', ''),
(15, '11112', 'IAS2143', '4102007651', 'A', '4', '', ''),
(16, '21112', 'ISS2133', '4102007651', 'A-', '3.67', '', ''),
(17, '21112', 'IAS2223', '4102007651', 'A', '4', '', ''),
(18, '21112', 'IAS1223', '4102007651', 'A', '4', '', ''),
(19, '21112', 'IAS2153', '4102007651', 'B+', '3.5', '', ''),
(20, '21112', 'IAS2213', '4102007651', 'A', '4', '', ''),
(21, '21112', 'IAS2243', '4102007651', 'A', '4', '', ''),
(22, '21234', 'IAS1323', '4102007651', 'A', '4', '', ''),
(23, '21234', 'IAS2113', '4102007651', 'A+', '4', '', ''),
(24, '21234', 'MPW2123', '4102007651', 'B', '3', '', ''),
(25, '31234', 'IAS2253', '4102007651', 'B+', '3.5', '', ''),
(26, '31234', 'ISS3233', '4102007651', 'A', '4', '', ''),
(27, '31234', 'IAS3232', '4102007651', 'A', '4', '', ''),
(28, '31234', 'ISS2313', '4102007651', 'A', '4', '', ''),
(29, '31234', 'IAS3143', '4102007651', 'A-', '3.67', '', ''),
(30, '31234', 'IAS2163', '4102007651', 'A', '4', '', ''),
(31, '20910', 'SFA1122', '2092004021', 'A-', '3.67', '', ''),
(32, '20910', 'IXA1113', '2092004021', 'A', '4', '', ''),
(33, '20910', 'IXA1213', '2092004021', 'C+', '2.5', '', ''),
(34, '20910', 'IXA1214', '2092004021', 'B+', '3.5', '', ''),
(35, '30910', 'ZEU1113', '2092004021', 'A-', '3.67', '', ''),
(36, '30910', 'FMA1134', '2092004021', 'A+', '4', '', ''),
(37, '30910', 'EPA1123', '2092004021', 'B+', '3.5', '', ''),
(38, '30910', 'IXA1124', '2092004021', 'B+', '3.5', '', ''),
(39, '30910', 'IXA1234', '2092004021', 'B', '3', '', ''),
(40, '20910', 'FMA1133', '2092004021', 'B', '3', '', ''),
(41, '11011', 'ZEU1223', '2092004021', 'A', '4', '', ''),
(42, '11011', 'FMA1233', '2092004021', 'A', '4', '', ''),
(43, '11011', 'IXA1224', '2092004021', 'A', '4', '', ''),
(44, '11011', 'IXA1344', '2092004021', 'A', '4', '', ''),
(45, '11011', 'IXA1314', '2092004021', 'A-', '3.67', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `degree_main`
--
-- Creation: Dec 21, 2013 at 04:51 AM
--

DROP TABLE IF EXISTS `degree_main`;
CREATE TABLE IF NOT EXISTS `degree_main` (
  `degree_id` char(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `degree_desc_eng` varchar(255) NOT NULL,
  `degree_tot_credit_hours` int(11) NOT NULL,
  `degree_duration` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`degree_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `degree_main`
--

INSERT INTO `degree_main` (`degree_id`, `degree_desc_eng`, `degree_tot_credit_hours`, `degree_duration`) VALUES
('FS201', 'FOUNDATION IN INFORMATION TECHNOLOGY', 51, '1'),
('IT301', 'DIPLOMA IN INFORMATION TECHNOLOGY', 120, '2 1/2'),
('IT302', 'DIPLOMA IN COMPUTER SCIENCE (INDUSTRIAL COMPUTING)', 120, '2 1/2'),
('IT303', 'DIPLOMA IN MULTIMEDIA INDUSTRY', 120, '2 1/2'),
('IT304', 'DIPLOMA COMPUTER APPLICATION IN BUSINESS', 120, '2 1/2'),
('IT305', 'DIPLOMA IN INFORMATION TECHNOLOGY (MOBILE TECHNOLOGY)', 94, '2 1/2'),
('IT401', 'BACHELOR IN INFORMATION TECHNOLOGY (HONOURS)', 125, '3 1/2'),
('IT402', 'BACHELOR OF COMPUTER SCIENCE (SOFTWARE ENGINEERING) (HONS)', 123, '3'),
('IT403', 'BACHELOR OF COMPUTER SCIENCE (HONS)', 120, '3'),
('IT404', 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY WITH SUPPLY CHAIN MANAGEMENT (HONS)', 120, '3'),
('IT405', 'BACHELOR OF MULTIMEDIA INDUSTRY (HONOURS)', 119, '3'),
('IT406', 'BACHELOR OF INFORMATION TECHNOLOGY (KNOWLEDGE MANAGEMENT) (HONOURS)', 120, '3 1/2'),
('IT601', 'MASTER OF INFORMATION TECHNOLOGY', 40, '1 1/2 - 4'),
('IT602', 'MASTER OF COMPUTER SCIENCE (SOFTWARE ENGINEERING)', 40, '1 1/2 - 4');

-- --------------------------------------------------------

--
-- Table structure for table `equivalent_course`
--
-- Creation: Dec 21, 2013 at 04:51 AM
--

DROP TABLE IF EXISTS `equivalent_course`;
CREATE TABLE IF NOT EXISTS `equivalent_course` (
  `equ_id` int(11) NOT NULL AUTO_INCREMENT,
  `equ_course_id` char(7) NOT NULL,
  `equ_course_equ` char(7) NOT NULL,
  `equ_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`equ_id`),
  KEY `equ_course_id` (`equ_course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=152 ;

--
-- RELATIONS FOR TABLE `equivalent_course`:
--   `equ_course_id`
--       `course_main` -> `course_id`
--

--
-- Dumping data for table `equivalent_course`
--

INSERT INTO `equivalent_course` (`equ_id`, `equ_course_id`, `equ_course_equ`, `equ_desc`) VALUES
(1, 'IAD2133', 'IWD2114', ''),
(2, 'IAS2233', 'ICS3243', ''),
(3, 'IAS3316', 'ICS3316', ''),
(4, 'IAS3223', 'IES3123', ''),
(5, 'IAS3213', 'IES3143', ''),
(6, 'IAS3143', 'IES3153', ''),
(7, 'IAD1133', 'IID1113', ''),
(8, 'IAD1123', 'IID1113', ''),
(9, 'IAD2243', 'IID1213', ''),
(10, 'IAD2213', 'IID2114', ''),
(11, 'IAD2143', 'IID2124', ''),
(12, 'IAD2153', 'IID2214', ''),
(13, 'IAD2333', 'IID2224', ''),
(14, 'IAD1143', 'IMD1114', ''),
(15, 'IAD1133', 'IMD1124', ''),
(16, 'IAD1123', 'IMD1124', ''),
(17, 'IAD1233', 'IMD1213', 'RESOLUSI JABATAN CS - SHARING'),
(18, 'IAD2143', 'IMD1324', ''),
(19, 'IAD2213', 'IMD2124', ''),
(20, 'IAD2333', 'IMD2234', ''),
(21, 'IAD2123', 'IMD2244', ''),
(22, 'IAD3162', 'IMD2312', ''),
(23, 'IAD3164', 'IMD3113', ''),
(24, 'IAS1123', 'ISS1133', ''),
(25, 'IAS2153', 'ISS1213', ''),
(26, 'IAS1223', 'ISS1223', ''),
(27, 'IAS2123', 'ISS1233', ''),
(28, 'IAS2143', 'ISS2123', ''),
(29, 'ISS2263', 'ISS2133', 'Perubahan susur galur Jabatan SE'),
(30, 'IAS1313', 'ISS2143', ''),
(31, 'IAS2253', 'ISS2153', ''),
(32, 'IAS2213', 'ISS2213', ''),
(33, 'IAS1113', 'ISS2223', ''),
(34, 'IAS2233', 'ISS2233', ''),
(35, 'IAS2243', 'ISS2243', ''),
(36, 'IAS2223', 'ISS3123', ''),
(37, 'IAS3133', 'ISS3133', ''),
(38, 'IAS3232', 'ISS3153', ''),
(39, 'IAS1323', 'ISS3213', ''),
(40, 'IAS2313', 'ISS3223', ''),
(41, 'IAS3244', 'ISS3243', ''),
(42, 'IAS3316', 'ISS3316', ''),
(43, 'IAD1213', 'ITD2113', ''),
(44, 'IAD2143', 'ITD2134', ''),
(45, 'IAD1143', 'ITD2144', ''),
(46, 'IAD2213', 'ITD2214', ''),
(47, 'ITD2223', 'ITD2224', ''),
(48, 'IAD2323', 'ITD2323', ''),
(49, 'ITD2333', 'ITD2334', ''),
(50, 'IAD3164', 'ITD3164', ''),
(51, 'IAS1233', 'ITS1213', ''),
(52, 'IAS1313', 'ITS1313', ''),
(53, 'IXS1314', 'ITS1314', ''),
(54, 'IAS2143', 'ITS3134', ''),
(55, 'IAS3316', 'ITS3316', ''),
(56, 'IAD1133', 'IWD1124', ''),
(57, 'IAD1123', 'IWD1124', ''),
(58, 'IAD2143', 'IWD2134', ''),
(59, 'IAD1143', 'IWD2144', ''),
(60, 'IAD2213', 'IWD2214', ''),
(61, 'IAD2223', 'IWD2224', ''),
(62, 'IAD3162', 'IWD2312', ''),
(63, 'IAD2323', 'IWD2323', ''),
(64, 'IAD2333', 'IWD2334', ''),
(65, 'IAD3164', 'IWD3113', ''),
(66, 'ITS1314', 'IXS1314', ''),
(67, 'IAD1113', 'IAD1114', ''),
(68, 'IAD1153', 'IAD1213', ''),
(70, 'IAD1133', 'IBD1124', ''),
(71, 'IAD1123', 'IBD1124', ''),
(73, 'IAD2143', 'IBD2134', ''),
(74, 'IAD2153', 'IBD2154', ''),
(75, 'IAD3164', 'IBD3164', ''),
(76, 'IAS1123', 'ICS1123', ''),
(77, 'IAS2213', 'ICS1213', ''),
(78, 'IAS1313', 'ICS1223', ''),
(79, 'IAS1233', 'ICS1233', ''),
(80, 'IAS2123', 'ICS1243', ''),
(81, 'IAS2143', 'ICS2113', ''),
(82, 'IAS2133', 'ICS2133', ''),
(83, 'IAS1223', 'ICS2143', ''),
(84, 'IAS2153', 'ICS2223', ''),
(85, 'IAS2243', 'ICS2243', ''),
(86, 'IAS1323', 'ICS3113', ''),
(87, 'IAS2253', 'ICS3123', ''),
(88, 'IAS3373', 'ICS3133', ''),
(89, 'IAS2223', 'ICS3143', ''),
(90, 'IAS3133', 'ICS3213', ''),
(91, 'IAS2313', 'ICS3223', ''),
(92, 'IAS3223', 'IBS2313', ''),
(93, 'IAS2263', 'IKS2143', ''),
(94, 'IAS3133', 'IKS3133', ''),
(95, 'IAS3232', 'IMS3152', ''),
(96, 'IAS2133', 'IMS3223', ''),
(97, 'IAS3313', 'IBS3144', ''),
(98, 'IAS3133', 'IBS3213', ''),
(99, 'IAD2333', 'ITD2333', ''),
(100, 'IAD2123', 'ITD2123', ''),
(101, 'IAD2223', 'ITD2223', ''),
(102, 'IAS1323', 'IMS1313', ''),
(103, 'IAS2143', 'IBS2133', ''),
(105, 'IAD1153', 'IAD1113', ''),
(106, 'IAS1323', 'IKS1313', ''),
(107, 'IAS1123', 'IKS1133', ''),
(108, 'IAS2223', 'IKS2223', ''),
(109, 'IAS2153', 'IKS3113', ''),
(110, 'IAS2153', 'IMS3113', ''),
(111, 'IAD2213', 'IBD2234', ''),
(112, 'IAS2243', 'IMS3123', ''),
(113, 'IAD1133', 'ITD1113', ''),
(114, 'IAD1123', 'ITD1113', ''),
(115, 'IAD2133', 'ITD1213', ''),
(116, 'IAS2123', 'IMS2123', ''),
(117, 'IAS2223', 'IMS2223', ''),
(118, 'IAS1323', 'IBS1313', ''),
(119, 'IAS2223', 'IBS2113', ''),
(120, 'IAS2123', 'IBS2123', ''),
(121, 'IAS2133', 'IBS2213', ''),
(122, 'IAS1313', 'IKS1213', ''),
(123, 'IAS2143', 'IKS2113', ''),
(124, 'IAS2233', 'IMS2113', ''),
(125, 'IAS2143', 'IMS2133', ''),
(127, 'IAS3213', 'IBS2243', ''),
(128, 'IAS2153', 'IBS3113', ''),
(129, 'IAS1113', 'IAS1113', ''),
(130, 'IAS1313', 'IBS1213', ''),
(131, 'IAS1123', 'IMS1213', ''),
(132, 'IAS1113', 'IAS1111', ''),
(134, 'IAD3162', 'ITD3162', ''),
(135, 'IAS2133', 'IKS2213', ''),
(136, 'IAS3143', 'IKS3143', ''),
(137, 'IAD2323', 'IMD2133', ''),
(139, 'IAD2173', 'IID2153', 'RESOLUSI JABATAN CS - SHARING'),
(140, 'IAS2263', 'ITS2243', ''),
(141, 'IAS2163', 'ITS1233', ''),
(142, 'IAS2253', 'IES3333', ''),
(143, 'IAS3316', 'IBS3316', ''),
(144, 'IAS2343', 'IAS3223', 'RESOLUSI JABATAN IS'),
(145, 'IAS3333', 'IAS2253', ''),
(146, 'IAS2253', 'IKS3213', ''),
(147, 'IAS3233', 'IKS3123', ''),
(148, 'IAS2253', 'IMS3213', ''),
(149, 'IAS3244', 'IMS3244', ''),
(150, 'IAS2353', 'IAS3153', 'RESOLUSI JABATAN CS'),
(151, 'IAD1323', 'IBD2223', '');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--
-- Creation: Dec 21, 2013 at 04:51 AM
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE IF NOT EXISTS `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `letter_grade` char(4) NOT NULL,
  `grade_point` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `letter_grade`, `grade_point`) VALUES
(1, 'A+/A', 4.00),
(2, 'A-', 3.67),
(3, 'B+', 3.50),
(4, 'B', 3.00),
(5, 'B-', 2.67),
(6, 'C+', 2.50),
(7, 'C', 2.00),
(8, 'C-', 1.67),
(9, 'D', 1.33),
(10, 'D-', 1.00),
(11, 'E', 0.67),
(12, 'F', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_profile`
--
-- Creation: Dec 21, 2013 at 04:51 AM
--

DROP TABLE IF EXISTS `lecturer_profile`;
CREATE TABLE IF NOT EXISTS `lecturer_profile` (
  `lect_id` char(10) NOT NULL,
  `lect_name` varchar(255) NOT NULL,
  `lect_sex` varchar(25) DEFAULT 'NA',
  `lect_status` varchar(255) DEFAULT 'NA',
  `lect_level` char(2) NOT NULL,
  `lect_dept` varchar(255) NOT NULL,
  `lect_email` varchar(255) DEFAULT 'NA',
  `lect_hp_no` varchar(255) DEFAULT 'NA',
  PRIMARY KEY (`lect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lecturer_profile`
--

INSERT INTO `lecturer_profile` (`lect_id`, `lect_name`, `lect_sex`, `lect_status`, `lect_level`, `lect_dept`, `lect_email`, `lect_hp_no`) VALUES
('050460', 'Barry Allen', 'male', 'active', 'B', 'Computer Science', '', ''),
('060699', 'Black Canary', 'Female', 'active', 'A', 'Software Engineering', 'canary@university.edu.my', 'N/A'),
('070604', 'Halle Berry', 'female', 'active', 'B', 'Management Information System', '', ''),
('070726', 'Kimberly Davies', 'female', 'active', 'B', 'Software Engineering', '', ''),
('070730', 'Stephanie Lim', 'female', 'active', 'B', 'Software Engineering', '', ''),
('080859', 'Dr. Mohammad Philips', 'male', 'active', 'B', 'Applied and Industrial Computing', '', ''),
('091001', 'Nazariah Johnson', 'female', 'active', 'B', 'Multimedia', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--
-- Creation: Dec 21, 2013 at 04:51 AM
--

DROP TABLE IF EXISTS `program`;
CREATE TABLE IF NOT EXISTS `program` (
  `prog_id` int(11) NOT NULL,
  `prog_desc` varchar(25) NOT NULL,
  `prog_desc_malay` varchar(25) NOT NULL,
  PRIMARY KEY (`prog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`prog_id`, `prog_desc`, `prog_desc_malay`) VALUES
(1, 'Full Time', 'Sepenuh Masa'),
(2, 'Part Time', 'Sepenuh Masa');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--
-- Creation: Dec 21, 2013 at 04:51 AM
--

DROP TABLE IF EXISTS `semesters`;
CREATE TABLE IF NOT EXISTS `semesters` (
  `semester_id` char(5) NOT NULL,
  `semester_type` varchar(15) DEFAULT NULL,
  `semester_status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_profile`
--
-- Creation: Dec 21, 2013 at 04:51 AM
--

DROP TABLE IF EXISTS `student_profile`;
CREATE TABLE IF NOT EXISTS `student_profile` (
  `stud_id` char(10) NOT NULL,
  `stud_name` varchar(255) NOT NULL,
  `stud_status` varchar(255) NOT NULL,
  `stud_degree` char(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `stud_ic_cur` varchar(20) NOT NULL,
  `stud_sex` varchar(10) DEFAULT NULL,
  `stud_advisor` char(6) DEFAULT NULL,
  `stud_email` varchar(255) DEFAULT NULL,
  `stud_program` int(11) NOT NULL,
  `stud_hp_no` varchar(255) DEFAULT NULL,
  `stud_intake` char(8) NOT NULL,
  PRIMARY KEY (`stud_id`),
  KEY `stud_degree` (`stud_degree`),
  KEY `stud_advisor` (`stud_advisor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `student_profile`:
--   `stud_degree`
--       `degree_main` -> `degree_id`
--   `stud_advisor`
--       `lecturer_profile` -> `lect_id`
--

--
-- Dumping data for table `student_profile`
--

INSERT INTO `student_profile` (`stud_id`, `stud_name`, `stud_status`, `stud_degree`, `stud_ic_cur`, `stud_sex`, `stud_advisor`, `stud_email`, `stud_program`, `stud_hp_no`, `stud_intake`) VALUES
('2092004021', 'TEST USER ONE', 'GRADUATED', 'FS201', '8888222', 'MALE', '060699', 'testuserone@yahoo.com', 1, '9999999999', '2/09/10'),
('4102007651', 'TEST USER TWO', 'ACTIVE', 'IT402', '8888222', 'MALE', '060699', 'testusertwo@yahoo.com', 1, '1111111111', '2/10/11');

-- --------------------------------------------------------

--
-- Table structure for table `stud_acad_sts`
--
-- Creation: Dec 21, 2013 at 04:51 AM
--

DROP TABLE IF EXISTS `stud_acad_sts`;
CREATE TABLE IF NOT EXISTS `stud_acad_sts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STUDSTS_SEM_ID` char(5) NOT NULL DEFAULT '0',
  `STUDSTS_STUD_ID` char(10) NOT NULL DEFAULT '',
  `STUDSTS_STS` varchar(13) DEFAULT NULL,
  `STUDSTS_GPA` decimal(3,2) DEFAULT NULL,
  `STUDSTS_CGPA` decimal(3,2) DEFAULT NULL,
  `STUDSTS_TOT_HR` int(2) DEFAULT NULL,
  `STUDSTS_REM` varchar(10) DEFAULT NULL,
  `STUDSTS_PREV_CGPA` decimal(3,2) DEFAULT NULL,
  `STUDSTS_POINT` decimal(4,2) DEFAULT NULL,
  `STUDSTS_CUM_HR` int(2) DEFAULT NULL,
  `STUDSTS_CUM_POINT` decimal(5,2) DEFAULT NULL,
  `STUDSTS_PREV_GPA` decimal(3,2) DEFAULT NULL,
  `STUDSTS_TOT_HR_COUNTED` int(2) DEFAULT NULL,
  `STUDSTS_CUM_HR_COUNTED` int(2) DEFAULT NULL,
  `STUDSTS_GPA_HR` int(2) DEFAULT NULL,
  `STUDSTS_CUM_GPA_HR` int(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `stud_acad_sts_ibfk_1` (`STUDSTS_STUD_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- RELATIONS FOR TABLE `stud_acad_sts`:
--   `STUDSTS_STUD_ID`
--       `student_profile` -> `stud_id`
--

--
-- Dumping data for table `stud_acad_sts`
--

INSERT INTO `stud_acad_sts` (`ID`, `STUDSTS_SEM_ID`, `STUDSTS_STUD_ID`, `STUDSTS_STS`, `STUDSTS_GPA`, `STUDSTS_CGPA`, `STUDSTS_TOT_HR`, `STUDSTS_REM`, `STUDSTS_PREV_CGPA`, `STUDSTS_POINT`, `STUDSTS_CUM_HR`, `STUDSTS_CUM_POINT`, `STUDSTS_PREV_GPA`, `STUDSTS_TOT_HR_COUNTED`, `STUDSTS_CUM_HR_COUNTED`, `STUDSTS_GPA_HR`, `STUDSTS_CUM_GPA_HR`) VALUES
(1, '20910', '2092004021', 'Good Standing', 3.32, 3.32, 15, '', 0.00, 49.84, 15, 49.84, 0.00, 15, 15, 15, 15),
(2, '11011', '2092004021', 'Good Standing', 3.93, 3.61, 18, '', 3.43, 70.68, 51, 184.03, 3.53, 18, 51, 18, 51),
(3, '30910', '2092004021', 'Good Standing', 3.53, 3.43, 18, '', 3.32, 63.51, 33, 113.35, 3.32, 18, 33, 18, 33),
(4, '21011', '4102007651', 'Good Standing', 3.95, 3.95, 18, '', 0.00, 71.01, 18, 71.01, 0.00, 18, 18, 18, 18),
(5, '31011', '4102007651', 'Good Standing', 3.88, 3.92, 8, '', 3.95, 31.01, 26, 102.02, 3.95, 8, 26, 8, 26),
(6, '11112', '4102007651', 'Good Standing', 3.65, 3.81, 17, '', 3.92, 62.00, 43, 164.02, 3.88, 17, 43, 17, 43),
(7, '21112', '4102007651', 'Good Standing', 3.86, 3.83, 18, '', 3.81, 69.51, 61, 233.53, 3.65, 18, 61, 18, 61),
(8, '21234', '4102007651', 'Good Standing', 3.67, 3.81, 9, '', 3.83, 33.00, 70, 266.53, 3.86, 9, 70, 9, 70);

-- --------------------------------------------------------

--
-- Table structure for table `stud_audit`
--
-- Creation: Dec 29, 2013 at 12:06 PM
--

DROP TABLE IF EXISTS `stud_audit`;
CREATE TABLE IF NOT EXISTS `stud_audit` (
  `stud_id` char(10) NOT NULL DEFAULT 'NA',
  `stud_mentor_id` char(6) NOT NULL DEFAULT 'NA',
  `session_graduate` varchar(10) NOT NULL DEFAULT 'NA',
  `extended_sem` varchar(5) NOT NULL DEFAULT 'NA',
  `total_sem_taken` int(11) NOT NULL DEFAULT '0',
  `spm_bm_result` varchar(4) NOT NULL DEFAULT 'NA',
  `muet_result` varchar(7) NOT NULL DEFAULT 'NA',
  `audit_status` varchar(15) NOT NULL DEFAULT 'NA',
  `approval_count` int(11) NOT NULL DEFAULT '0',
  `audit_status_comment` varchar(625) NOT NULL DEFAULT 'NA',
  `audit_app_date` varchar(35) NOT NULL DEFAULT 'NA',
  `program_type` varchar(25) NOT NULL DEFAULT 'NA',
  `audit_cect_remark` int(11) NOT NULL DEFAULT '0',
  `audit_valid_date` varchar(255) DEFAULT 'NA',
  `audit_approved_by` varchar(255) DEFAULT 'NA',
  PRIMARY KEY (`stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `stud_audit`:
--   `stud_id`
--       `student_profile` -> `stud_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `stud_cect_remark`
--
-- Creation: Dec 30, 2013 at 02:16 PM
--

DROP TABLE IF EXISTS `stud_cect_remark`;
CREATE TABLE IF NOT EXISTS `stud_cect_remark` (
  `stud_id` char(10) DEFAULT 'NA',
  `scr_course_id` char(7) DEFAULT 'NA',
  `scr_cect_result` varchar(25) DEFAULT 'NA',
  `scr_comments` varchar(625) DEFAULT 'NA',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `stud_cect_ibfk_1` (`stud_id`),
  KEY `stud_cect_ibfk_2` (`scr_course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- RELATIONS FOR TABLE `stud_cect_remark`:
--   `stud_id`
--       `student_profile` -> `stud_id`
--   `scr_course_id`
--       `course_main` -> `course_id`
--

--
-- Dumping data for table `stud_cect_remark`
--

INSERT INTO `stud_cect_remark` (`stud_id`, `scr_course_id`, `scr_cect_result`, `scr_comments`, `id`) VALUES
('4102007651', 'FMA1133', 'Credit Exemption', 'dsghdfjhtuj', 6),
('4102007651', 'IAD1133', 'Credit Transfer', 'drthdtjhtdj', 7),
('4102007651', 'IAD2293', 'Credit Transfer', 'tdjtsst', 8),
('4102007651', 'IAD2133', 'Credit Transfer', 'Took it in diploma', 9),
('4102007651', 'FMS1323', 'Credit Exemption', 'That stuff, was too easy', 10),
('4102007651', 'IAD1152', 'Credit Exemption', 'Had it!', 11);

-- --------------------------------------------------------

--
-- Table structure for table `stud_course_trans`
--
-- Creation: Dec 21, 2013 at 04:51 AM
--

DROP TABLE IF EXISTS `stud_course_trans`;
CREATE TABLE IF NOT EXISTS `stud_course_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sct_course_id` char(7) NOT NULL,
  `sct_degree` char(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sct_grade` char(3) NOT NULL,
  `sct_grade_point` char(4) NOT NULL,
  `sct_sem_id` char(5) NOT NULL,
  `sct_status` varchar(20) DEFAULT NULL,
  `sct_stud_id` char(10) NOT NULL,
  `sct_type` char(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sct_course_id` (`sct_course_id`),
  KEY `sct_degree` (`sct_degree`),
  KEY `sct_stud_id` (`sct_stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- RELATIONS FOR TABLE `stud_course_trans`:
--   `sct_course_id`
--       `course_main` -> `course_id`
--   `sct_stud_id`
--       `student_profile` -> `stud_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Dec 21, 2013 at 04:51 AM
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `user_pass` varchar(25) NOT NULL,
  `user_level` int(11) NOT NULL,
  `user_timestamp` varchar(255) DEFAULT NULL,
  `user_ip` varchar(255) DEFAULT NULL,
  `stud_id` char(10) DEFAULT NULL,
  `lect_id` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_id`),
  KEY `stud_id` (`stud_id`),
  KEY `lect_id` (`lect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `users`:
--   `stud_id`
--       `student_profile` -> `stud_id`
--   `lect_id`
--       `lecturer_profile` -> `lect_id`
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_pass`, `user_level`, `user_timestamp`, `user_ip`, `stud_id`, `lect_id`) VALUES
(1, 'user1', 'user1', 3, 'Fri Jan 10 04:36:07 SGT 2014', '0.0.0.0', '4102007651', NULL),
(2, 'user2', 'user2', 3, 'Wed Jan 08 03:31:04 SGT 2014', '0.0.0.0', '2092004021', NULL),
(3, 'lecturer1', 'lecturer1', 2, 'Fri Jan 10 04:10:13 SGT 2014', '0.0.0.0', NULL, '060699'),
(4, 'lecturer2', 'lecturer2', 2, 'Fri Jan 10 04:49:14 SGT 2014', '0.0.0.0', NULL, '070730');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_registration`
--
ALTER TABLE `course_registration`
  ADD CONSTRAINT `course_registration_ibfk_1` FOREIGN KEY (`courseregis_course_id`) REFERENCES `course_main` (`course_id`),
  ADD CONSTRAINT `course_registration_ibfk_2` FOREIGN KEY (`courseregis_stud_id`) REFERENCES `student_profile` (`stud_id`);

--
-- Constraints for table `equivalent_course`
--
ALTER TABLE `equivalent_course`
  ADD CONSTRAINT `equivalent_course_ibfk_1` FOREIGN KEY (`equ_course_id`) REFERENCES `course_main` (`course_id`);

--
-- Constraints for table `student_profile`
--
ALTER TABLE `student_profile`
  ADD CONSTRAINT `student_profile_ibfk_1` FOREIGN KEY (`stud_degree`) REFERENCES `degree_main` (`degree_id`),
  ADD CONSTRAINT `student_profile_ibfk_2` FOREIGN KEY (`stud_advisor`) REFERENCES `lecturer_profile` (`lect_id`);

--
-- Constraints for table `stud_acad_sts`
--
ALTER TABLE `stud_acad_sts`
  ADD CONSTRAINT `stud_acad_sts_ibfk_1` FOREIGN KEY (`STUDSTS_STUD_ID`) REFERENCES `student_profile` (`stud_id`);

--
-- Constraints for table `stud_audit`
--
ALTER TABLE `stud_audit`
  ADD CONSTRAINT `stud_audit_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `student_profile` (`stud_id`);

--
-- Constraints for table `stud_cect_remark`
--
ALTER TABLE `stud_cect_remark`
  ADD CONSTRAINT `stud_cect_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `student_profile` (`stud_id`),
  ADD CONSTRAINT `stud_cect_ibfk_2` FOREIGN KEY (`scr_course_id`) REFERENCES `course_main` (`course_id`);

--
-- Constraints for table `stud_course_trans`
--
ALTER TABLE `stud_course_trans`
  ADD CONSTRAINT `stud_course_trans_ibfk_1` FOREIGN KEY (`sct_course_id`) REFERENCES `course_main` (`course_id`),
  ADD CONSTRAINT `stud_course_trans_ibfk_3` FOREIGN KEY (`sct_stud_id`) REFERENCES `student_profile` (`stud_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `student_profile` (`stud_id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`lect_id`) REFERENCES `lecturer_profile` (`lect_id`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
