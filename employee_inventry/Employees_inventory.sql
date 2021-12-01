show databases;
use iss_project;
create database iss_project;

use iss_project;
show tables;
/*  --------------------------------------------------------------------------------------------*/
/* EMPLOYEES */

create table Employees
(
Security_key varchar(10),
Emp_name varchar(50) NOT NULL,
arrival_date datetime NOT NULL,
Departure_date datetime NOT NULL,
Occupation varchar(100) NOT NULL,
Edu_qualification varchar(500),
Date_of_birth date NOT NULL,
Emp_age int(5) NOT NULL,
Emp_nationality varchar(50) NOT NULL,
Time_in_space varchar(100) NOT NULL,
Expedition varchar(50) NOT NULL,
Arrival_flight varchar(50) NOT NULL,
Departure_flight varchar(50) NOT NULL,
missions varchar(200) NOT NULL,
PRIMARY KEY(Security_key)
);

select * from employees;

/*  INVENTORY*/

create table Electrical_items
(
Electrical_id varchar(50),
El_item_name varchar(50) NOT NULL,
El_item_description varchar(500),
El_quantity int NOT NULL,
PRIMARY KEY(Electrical_id)
);

create table Tools
(
Tool_id varchar(50),
Tool_name varchar(50) NOT NULL,
Tool_discription varchar(500),
tool_quantity int NOT NULL,
PRIMARY KEY(Tool_id)
);

create table Machines
(
Machine_id varchar(50),
Machine_name varchar(50) NOT NULL,
Mac_discription varchar(500),
Mac_quantity int NOT NULL,
PRIMARY KEY(Machine_id)
);

/*  PANTRY AND RESEARCH  */

CREATE TABLE Food_items
(
Food_id INT AUTO_INCREMENT PRIMARY KEY,
Food_name VARCHAR(50) NOT NULL,
Item_category VARCHAR(50) NOT NULL,
Food_type VARCHAR(50)
);

CREATE TABLE Nutritional_Values
(
Food_id INT PRIMARY KEY AUTO_INCREMENT,
 FOREIGN KEY(Food_name) REFERENCES Food_items,
Energy INT,
Protien INT,
Fat INT,
Water INT ,
Carbohydrates INT
);

CREATE TABLE Meal
(
Meal_id VARCHAR(10),
Food_items VARCHAR(1000),
Day VARCHAR(10) ,
PRIMARY KEY (Day,Meal_id)
);

/*  PROJECTS  */


/*  PRODUCT AND ADMINSTRATION  */


CREATE TABLE international_partners
(
	Country_name VARCHAR(50),
	Agency_participated VARCHAR(50),
	Abbreviations CHAR(30)
);

	DESCRIBE international_partners;

 SELECT * FROM international_partners;

CREATE TABLE who_is_on_station(ServiceID VARCHAR(50),FName VARCHAR(25),LName VARCHAR(25),Gender CHAR(5));

    DESC who_is_on_station;

 CREATE TABLE mission_overview (Timeline DATE NOT NULL,Expedition_NO BIGINT NOT NULL,Expedition_Name VARCHAR(25), Expedetion_Status CHAR(15));
    
    DESC mission_overview;
    
SELECT * FROM mission_overview;

/*---------------------------------------------------------------------------------------------- */
/* ENTERING VALUES TO EMPLOYEE TABLE */

show tables;

insert into Employees values 
("ast2100001","William Shepherd", "2000-10-31 07:52", "2001-03-21 07:33", "Navy SEAL, engineer", "United States Naval Academy, B.S. 1971 Massachusetts Institute of Technology, E.O.E. and M.S. 1978", "1949-7-26",72, "United States", "159d 07h 49min", "Expedition 1", "Soyuz TM-31", "STS-102", "STS-27, STS-41, STS-52, Soyuz TM-31, Expedition 1, STS-102"),

("ast2100002","Sergei Krikalev", "2000-10-31 07:52", "2001-03-21 07:33", "Mechanical Engineer", "Baltic State Technical University, mechanical engineering degree 1981", "1958-8-27",63, "Russia", "803d 9h 39min", "Expedition 1", "Soyuz TM-31", "STS-102", "Mir EO-4 (Soyuz TM-7), Mir LD-3 (Soyuz TM-12, Soyuz TM-13), STS-60, STS-88, Expedition 1 (Soyuz TM-31, STS-102), Expedition 11 (Soyuz TMA-6)"),
 
("ast2100003", "Yuri Gidzenko", "2000-10-31 07:52", "2001-03-21 07:33", "Pilot", "graduated from the Higher Military Pilot School in Kharkiv in 1983, graduated from the Moscow State University of Geodesy and Cartography (MIIGAiK) in 1994 specializing in geodesy and cartography.", "1962-3-26",59, "Russia", "329d 22h 44min", "Expedition 1", "Soyuz TM-31", "STS-102", "Soyuz TM-22, Mir EO-20, Soyuz TM-31, Expedition 1, STS-102, Soyuz TM-34/TM-33"),

("ast2100004","Yury Usachov", "2001-3-8 11:42", "2001-8-22 19:24", "Mechanical Engineer", "graduated from the Donetsk Public School in 1975", "1957-10-9",64, "Russia", "552d 22h 25min", "Expedition 2", "STS-102", "STS-105", "Mir EO-15 (Soyuz TM-18), Mir EO-21 (Soyuz TM-23), STS-101, Expedition 2 (STS-102 / STS-105)"),

("ast2100005", "James S. Voss", "2001-3-8 11:42", "2001-8-22 19:24", "Test pilot, infantry officer", "Auburn University, B.S. 1972, University of Colorado, M.S. 1974", "1949-3-3",72, "United States", "202d 05h 28m", "Expedition 2", "STS-102", "STS-105", "STS-44, STS-53, STS-69, STS-101, Expedition 2 (STS-102 / STS-105)"),

("ast2100006", "Susan Helms", "2001-3-8 11:42", "2001-8-22 19:24", "Engineer", "Master of Science in Aeronautics and Astronautics from Stanford University in 1985", "1958-2-26",63, "United States", "210d 23h 06min", "Expedition 2", "STS-102", "STS-105", "STS-54, STS-64, STS-78, STS-101, Expedition 2 (STS-102 / STS-105)"),

("ast2100007","Frank L. Culbertson Jr.", "2001-8-10 21:10", "2001-12-17 17:56", "Naval aviator, test pilot", "graduated from Holly Hill High School in 1967, and received a Bachelor of Science degree in Aerospace Engineering from the United States Naval Academy in 1971", "1949-5-15",72, "United States", "143d 14h 50m", "Expedition 3", "STS-105", "STS-108", "STS-38, STS-51, STS-105, Expedition 3, STS-108"),

("ast2100008","Mikhail Tyurin", "2001-8-10 21:10", "2001-12-17 17:56", "Mechanical Engineer", "graduated from the Moscow Aviation Institute in 1984", "1960-3-2",61, "Russia", "532 days, 02 hours, 50 minutes", "Expedition 3", "STS-105", "STS-108", "STS-105/STS-108 (Expedition 3), Soyuz TMA-9 (Expedition 14), Soyuz TMA-11M (Expedition 38/39)"),

("ast2100009","Vladimir Dezhurov", "2001-8-10 21:10", "2001-12-17 17:56", "Mechanical Engineer", "graduated from the S.I. Gritsevits Kharkov Higher Military Aviation School in 1983", "1962-7-30",59, "Russia", "244d 05h 28m", "Expedition 3", "STS-105", "STS-108", "Soyuz TM-21, Mir EO-18, STS-71, STS-105, Expedition 3, STS-108"),

("ast2100010","Yury Onufriyenko", "2001-12-5 22:19", "2002-6-19 09:57", "Pilot", "graduated from the V.M. Komarov Eisk Higher Military Aviation School for Pilots in 1982, degree in cartography from Moscow State University", "1961-2-6",60, "Russia", "389d 14h 46min", "Expedition 4", "STS-108", "STS-111", "Soyuz TM-23, Mir EO-21, STS-108, Expedition 4, STS-111"),

("ast2100011","Carl E. Walz", "2001-12-5 22:19", "2002-6-19 09:57", "Engineer", "Graduated from Charles F. Brush High School, Lyndhurst, Ohio,1973; Bachelor of Science degree in physics from Kent State University, Ohio, in 1977, Master of Science in solid state physics from John Carroll University, Ohio, in 1979.", "1955-9-6",66, "United States", "230 d 13 h 04 m", "Expedition 4", "STS-108", "STS-111", "STS-51, STS-65, STS-79, STS-108, Expedition 4, STS-111"),

("ast2100012","Daniel W. Bursch", "2001-12-5 22:19", "2002-6-19 09:57", "Engineer", "graduated from Vestal Senior High School, Vestal, New York, in 1975; Bachelor of Science degree in Physics from the United States Naval Academy in 1979, Master of Science degree in Engineering Science from the U.S. Naval Postgraduate School in 1991", "1957-7-25",64, "United States", "226d 22h 16m", "Expedition 4", "STS-108", "STS-111", "STS-51, STS-68, STS-77, Expedition 4 (STS-108 / STS-111)"),

("ast2100013","Valery Korzun", "2002-6-5 21:22", "2002-12-7 19:37", "Pilot", "graduated from the Kachinsk higher military aviation pilot school. In 1987", "1953-3-5",68, "Russia", "381d 15h 41min", "Expedition 5", "STS-111", "STS-113", "Soyuz TM-24, STS-111, Expedition 5, STS-113"),
 
("ast2100014","Sergei Treshchov", "2002-6-5 21:22", "2002-12-7 19:37", "Pilot", "1976 graduated from technical school as an electric welder; In 1982, graduated from the Moscow Power Institute specializing in engineer-teacher of electrical power disciplines", "1958-8-18",63, "Russia", "184d 22h 15m", "Expedition 5", "STS-111", "STS-113", "STS-111/113 (Expedition 5)"),

("ast2100015","Peggy Whitson", "2002-6-5 21:22", "2002-12-7 19:37", "Biochemist Astronaut Research Scientist", "Iowa Wesleyan University, Rice University", "1960-2-9",61, "United States", "665 days 22 hours 22 minutes", "Expedition 5", "STS-111", "STS-113", "STS-111/STS-113 (Expedition 5), Soyuz TMA-11 (Expedition 16), Soyuz MS-03/MS-04 (Expedition 50/51/52), Ax-2");

insert into machines values
("mach001", "Zero-Gravity 3D Printer" , "printer can produce spare parts to fix broken equipment far faster than a rocket could bring up replacements",2),

("mach002", "Robonaut", "Robonaut is a humanoid robot torso on the ISS that looks like half an astronaut. The similarities are purposeful: His humanlike arms, legs and hands allow him to operate the same tools the real astronauts use.", 5),

("mach003", "Avian Development Facility (ADF)", "this pair of centrifuges housed a rotating cast of Japanese-quail eggs. The device is used in the ISS to study and to get a better understanding of how space affects embryo development",4),

("mach004", "Advanced Resistive Exercise Device (ARED)", "The specialized resistance machine allows astronauts to weight lift in a weightless environment. There’s also a treadmill that straps them in for running",15),

("mach005", "Microgravity Science Glovebox (MSG)", "The Glovebox makes it possible for astronauts on board the ISS to carry out experiments involving liquids, combustibles, and other hazardous materials they might not want floating around the cabin",2),

("mach006", "Mobile Servicing System", "giant robot crane can move everything from fragile astronauts to objects with an Earth weight of more than 200,000 pounds. It’s 57.7 feet long when fully extended and contains seven joints for a range of flexibility",1),

("mach007", "Trace Gas Analyzer", "astronauts wear a shoebox-sized system strapped to the front of their suits that contains one of the world’s smallest high-performance mass spectrometers. The tiny, two-inch long system can detect leaking water, seeping rocket fuel, or escaping oxygen",15),

("mach008", "Water Reclamation System (WRS)", "The system collects all the waste water onboard—the astronauts' urine, humidity condensation on the walls and windows, Extra Vehicular Activity waste, and used washing water—and then purifies it through a series of distillation units and filters. The cleaned water is suitable for drinking or washing",2),

("mach009", "Oxygen Generation System (OGS)", "Some of the reclaimed water goes towards the ISS system for generating its own oxygen. the OGS turns water into oxygen by using an electric current, supplied by the ISS’s solar panels, to break the individual molecules into hydrogen and oxygen atoms",2),

("mach010", "Alpha Magnetic Spectrometer (AMS)", "It’s designed to detect and sort hundreds of billions of high-energy charged particles whizzing through space using a giant ring magnet that creates a magnetic field 3,000 times as strong as Earth’s to bend particles passing through it in meaningful ways", 1),

("mach011", "Global Ecosystem Dynamics Investigation (GEDI)", "Super-specific sensors will measure down to the nanosecond how long it takes for the light pulses to hit the forest floor or canopy and bounce back, indicating the presence of trees and even their height. GEDI will be more precise than any other satellite collecting data about forests and allow scientists to create incredibly accurate 3D maps",1);


insert into tools values
("tool001", "Space Tether", "tether was used to secure tools and other equipment to the space vehicles and prevent astronauts from floating away. The two-part mechanisms on the latches prevent accidental detachment", 100),

("tool002", "Servicing Handrail", "Handrails provide a safe path and sturdy anchor for astronauts working outside a spacecraft. Their yellow color makes them easy to see against the white, silver, and black materials normally used on spacecraft and payloads", 78),

("tool003", "Canadarm", "This jointed robotic arm, known as the Canadarm or Remote Manipulator System arm, was used to move payloads and position astronauts working outside the Space Shuttle. The arm was controlled by an astronaut stationed inside the spacecraft", 112),

("tool004", "IMAX Camera", "Astronauts were trained on how to operate the camera and how to act like cinematographers to capture footage used in several IMAX feature films. Velcro, bumpers, and other adjustments made the camera easier to use in zero-g",44),

("tool005", "open-ended spanner", "A one-piece wrench with a U-shaped opening that grips two opposite faces of the bolt or nut. This wrench is often double-ended, with a different-sized opening at each end. The ends are generally oriented at an angle of around 15 degrees to the longitudinal axis of the handle. This allows a greater range of movement in enclosed spaces by flipping the wrench over",10),

("tool006", "swivel head spanner", "Similar in concept to a socket wrench. A Saltus wrench features a socket permanently affixed to a handle. Sockets are not interchangeable as with a socket wrench. The socket often rotates around the handle to allow the user to access a fastener from a variety of angles. Commonly a Saltus wrench is part of a double-ended wrench, with an open-end type head on the opposite side from the socket head", 11),

("tool007", "adjustable spanner or shifting spanner wrench", "The most common type of adjustable wrench in use today. The adjustable end wrench differs from the monkey wrench in that the gripping faces of the jaws are displaced to a (typically) 15 degree angle relative to the tool's handle, a design feature that facilitates the wrench's use in close quarters.", 5),

("tool008", "Torx or Star Screwdriver", "Known variously as star head screwdrivers, pointed screwdrivers, six-point screwdrivers, and torx screwdrivers, these versions are all the same type. Torx is the trademark for a type of screw head with a six-point star-shaped intrusion, hence the generic name star screwdriver.",14),

("tool009", "Pozidriv Screwdriver", "Pozidriv screwdrivers are essentially an upgraded version of Philips. They were designed to reduce cam-out, which is the process where a screwdriver slips out of the screw head when more torque is applied.",9),

("tool010", "Hairspring cutters", "Cutters - End cutters with small pointed head - Full-Flush. OAL: 115mm-4,53in",2),

("tool011", "Precision pliers", "Pliers - Flat Nose, Smooth Jaws. OAL: 130mm-5,12in",3),

("tool012", "Ball Peen Hammers", "The flathead might be used with chisels, while the ball head (the peen) helps round off metal edges",1),

("tool013", "Staple Guns", "Staples are more difficult to remove than nails, making them better choices for some projects like upholstery or cabinetry since they offer a bit more security",7);


insert into Electrical_items values
("ee001", "Secondary Lithium ion batteries", "Lithium ion batteries (limited to those with a volume energy density per unit cell of not less than 400 watt-hours per litre, and excluding those for automobiles, motorized bicycles, medical equipment, and industrial equipment",10),

("ee002", "Arc welding machines Arc", "welding machines (limited to those having a rated secondary current of not more than 130 amperes if the rated voltage of exceeding 150 volts)",2),

("ee003", "Rubber insulated Electric Wires", "Cables (limited to those with a rated voltage of not less than 100 volts and not more than 600 volts, with a nominal cross-sectional area of the conductors of exceeding 22 square millimetres and not more than 100 square millimetres, and having not more than 7 cores, and a sheath of rubber including synthetic rubber)",900),

("ee004", "Metal conduits", "Conduits (including flexible conduits, and limited to those whose 8 internal diameter is not more than 120 millimetres)",500),

("ee005", "Cartrige fuses", " Cartridge fuses",50),

("ee006", "Remote control relays", "Remote control relays (limited to those with a rated current of not more than 30 amperes, and excluding those with special structures incorporated into the mechanical device)",50),

("ee007", "Transformers", "single-phase small power transformers (limited to those with a rated capacity of not more than 500 volt-amperes),Transformers for remote control relays (excluding those with special structures incorporated into the mechanical device), Transformers for neon tubes (excluding those with special structures incorporated into the mechanical device), Transformers for combustion appliances (limited to those for ignition use, excluding pulse types)",100),

("ee008", "Electric Heating Appliances", "Electric foot warmers and electric slippers, Electric underblankets, electric blankets, and electric comforters, Electric melters, Electric insecticide vaporizers",2),

("ec009", "Air compressors", "Electric air compressors (limited to those with rated power usage of not more than 500 watts, excluding those with special structures incorporated into the mechanical device)",5),

("ec010", "Electric refrigerators", " Electric refrigerators and electric freezers (limited to those having a cooling device with a rated power consumption of not more than 500 watts)",3),

("ec011", "Wrapping machines", " Electric wrapping machines and electric packaging machines (limited to those with a rated power consumption of not more than 500 watts)",1),

("ec012", "Microfilm readers", "Microfilm readers (limited to those with a screen of not more than 500 millimetres in length, and excluding those equipped with automatic search devices, or automatic continuous printing devices)",5),

("ec014", "Episcopes", "Episcopes (limited to those with a rated power usage of not more than 2 kilowatts, and excluding those for use with television, and those using a xenon-arc lamphouse as the light source)",3),

("ec015", "Ultrasonic humidifiers", "Ultrasonic humidifiers (limited to those with a rated high frequency output of not more than 50 watts)",10),

("ec016", "Radio interference suppression devices", "Radio interference suppression devices (limited to those which prevent the transmission of a high frequency current that causes noise in television receivers or radio receivers and consisting of capacitors or a combination of capacitors and coils as main components, and excluding those with a rated current of exceeding 5 amperes and those with special structures incorporated into the mechanical device)",2);


/* projects */




/* product & adminstrations */

	INSERT INTO international_partners (Country_name,Agency_participated,Acronymys) VALUES (" United States "," National Aeronautics and Space Adminstration "," NASA ");
	INSERT INTO international_partners (Country_name,Agency_participated,Acronymys) VALUES (" Russia "," Roscosmos State Corporation for Space Activities "," ROSCOSMOS ");
	INSERT INTO international_partners (Country_name,Agency_participated,Acronymys) VALUES (" Canada "," Canadian Space Agency "," CSA ");
	INSERT INTO international_partners (Country_name,Agency_participated,Acronymys) VALUES (" Japan "," Japan Aerospace EXploration Agency "," JAXA ");
	INSERT INTO international_partners (Country_name,Agency_participated,Acronymys) VALUES (" European Union (EU)  "," European Space Agency "," ESA ");




 	INSERT INTO who_is_on_station (ServiceID,FName,LName,Gender) VALUES (" Classified "," Raja "," Chari "," M ");
	INSERT INTO who_is_on_station (ServiceID,FName,LName,Gender) VALUES (" Classified "," Thomas "," Mashburn "," M ");
	INSERT INTO who_is_on_station (ServiceID,FName,LName,Gender) VALUES (" Classified "," Matthias "," Maureer "," M ");
	INSERT INTO who_is_on_station (ServiceID,FName,LName,Gender) VALUES (" Classified "," Anton "," Shakaplerov "," M ");
	INSERT INTO who_is_on_station (ServiceID,FName,LName,Gender) VALUES (" Classified "," Pytor "," Dubrov "," M ");
	INSERT INTO who_is_on_station (ServiceID,FName,LName,Gender) VALUES (" Classified "," Kayla "," Barron "," F ");
	INSERT INTO who_is_on_station (ServiceID,FName,LName,Gender) VALUES (" Classified "," Mark "," Vande Hei "," M ");



	INSERT INTO mission_overview (Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES (" 2021-10-17 "," 65 "," Soyuz MS-18 Land"," Completed");
	INSERT INTO mission_overview (Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES (" 2021-10-21 "," 64 "," ISS Progress 79 Launch "," Completed ");
	INSERT INTO mission_overview (Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES (" 2021-10-29 "," 63 "," ISS Progress 79 Dock   "," Completed ");
	INSERT INTO mission_overview (Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES (" 2021-11-08 "," 62 "," Crew 2 Undock "," Completed ");
	INSERT INTO mission_overview (Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES (" 2021-11-08 "," 61 "," Crew 2 Splashdown "," Completed ");
	INSERT INTO mission_overview (Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES (" 2021-11-10 "," 60 "," Crew 3 Launch "," Completed ");
	INSERT INTO mission_overview (Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES (" 2021-11-11 "," 59 "," Crew 3 Dock   "," Completed ");
	INSERT INTO mission_overview (Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES (" 2021-11-21 "," 58 "," Cygnus CRS 16 Release "," Completed ");


