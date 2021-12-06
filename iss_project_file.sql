show databases;

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

CREATE TABLE Fooditem
(
Food_id INT AUTO_INCREMENT PRIMARY KEY,
Foodname VARCHAR(50) NOT NULL,
Itemcategory VARCHAR(50) NOT NULL,
Foodtype VARCHAR(50)
);

CREATE TABLE Nutritional_Value
(
Food_id INT PRIMARY KEY AUTO_INCREMENT,
FOREIGN KEY (Food_id) REFERENCES Food_items(food_id),
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

CREATE TABLE Research(
 IdResearch INT AUTO_INCREMENT PRIMARY KEY,
 Research VARCHAR(100) NOT NULL,
 Category VARCHAR(50) NOT NULL,
 Organisation VARCHAR(50) NOT NULL,
 Researcher VARCHAR(50) NOT NULL,
 Overview VARCHAR(1000) NOT NULL
);
SELECT * FROM Research;


/*  EXPERIMENTS  */

create table experiments
(
exp_id varchar(10) primary key,
exp_name varchar(200) NOT NULL,
exp_link varchar(200),
exp_department varchar(100)
);

/*  PRODUCT AND ADMINSTRATION  */


CREATE TABLE international_partners
(
Country_name VARCHAR(50),
Agency_participated VARCHAR(50),
Abbreviations CHAR(30)
);

DESCRIBE international_partners;

SELECT * FROM international_partners;

CREATE TABLE current_staff(
ServiceID VARCHAR(50),
FName VARCHAR(25),
LName VARCHAR(25),
Gender CHAR(5),
primary key (serviceid)
);

DESC current_staff;

CREATE TABLE mission_overview (
serviceid varchar(50),
Timeline DATE NOT NULL,
Expedition_NO BIGINT NOT NULL,
Expedition_Name VARCHAR(25),
Expedetion_Status CHAR(15),
primary key (serviceid),
FOREIGN KEY (serviceid) REFERENCES current_staff(ServiceID)
);
    
DESC mission_overview;
    
SELECT * FROM mission_overview;

 CREATE TABLE Products
(
Apps VARCHAR(100),
Audio_and_Ringtone VARCHAR(100),
Ebooks VARCHAR(100),
Podcast VARCHAR(100)
);
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

insert into experiments values
("exp001","Sprut-MBI (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Sprut-MBI&action=edit&redlink=1" ,"Human life research"),
("exp002", "Parodont(ISS Experiment)", "https://en.wikipedia.org/w/index.php?title=Parodont_(ISS_Experiment)&action=edit&redlink=1" ,"Human life research"),
("exp003", "Cardio-ODNT (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Cardio-ODNT_(ISS_Experiment)&action=edit&redlink=1" ,"Human life research"),
("exp004", "Mass Transfer (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Mass_Transfer_(ISS_Experiment)&action=edit&redlink=1" ,"Human life research"),
("exp005", "Prognos (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Prognos_(ISS_Experiment)&action=edit&redlink=1" ,"Human life research"),
("exp006", "Uragan (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Uragan_(ISS_Experiment)&action=edit&redlink=1" ,"Geophysical research"),
("exp007", "Relaksatsia (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Relaksatsia_(ISS_Experiment)&action=edit&redlink=1" ,"Geophysical research"),
("exp008", "Molnyia-SM (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Molnyia-SM_(ISS_Experiment)&action=edit&redlink=1" ,"Geophysical research"),
("exp009", "Vsplesk (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Vsplesk_(ISS_Experiment)&action=edit&redlink=1" ,"Geophysical research"),
("exp010", "Diatomeya (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Diatomeya_(ISS_Experiment)&action=edit&redlink=1" , "Earth resources sensing"),
("exp011", "Volny (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Volny_(ISS_Experiment)&action=edit&redlink=1" , "Earth resources sensing"),
("exp012", "Rusalka (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Rusalka_(ISS_Experiment)&action=edit&redlink=1" , "Earth resources sensing"),
("exp013", "Tenzor (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Tenzor_(ISS_Experiment)&action=edit&redlink=1" ,"Technical research"),
("exp014", "Iskazhenye (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Iskazhenye_(ISS_Experiment)&action=edit&redlink=1" ,"Technical research"),
("exp015", "Privyazka (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Privyazka_(ISS_Experiment)&action=edit&redlink=1" ,"Technical research"),
("exp016", "Identificatsia (ISS Experiment)","https://en.wikipedia.org/w/index.php?title=Identificatsia_(ISS_Experiment)&action=edit&redlink=1" ,"Technical research");


/* product & adminstrations */

INSERT INTO international_partners  VALUES (" United States "," National Aeronautics and Space Adminstration "," NASA ");
INSERT INTO international_partners  VALUES (" Russia "," Roscosmos State Corporation for Space Activities "," ROSCOSMOS ");
INSERT INTO international_partners  VALUES (" Canada "," Canadian Space Agency "," CSA ");
INSERT INTO international_partners  VALUES (" Japan "," Japan Aerospace EXploration Agency "," JAXA ");
INSERT INTO international_partners  VALUES (" European Union (EU)  "," European Space Agency "," ESA ");


select * from current_staff;

INSERT INTO current_staff (ServiceID,FName,LName,Gender) VALUES ("ast2100238"," Raja "," Chari "," M ");
INSERT INTO current_staff (ServiceID,FName,LName,Gender) VALUES ("ast2100239"," Thomas "," Mashburn "," M ");
INSERT INTO current_staff (ServiceID,FName,LName,Gender) VALUES ("ast2100240"," Matthias "," Maureer "," M ");
INSERT INTO current_staff (ServiceID,FName,LName,Gender) VALUES ("ast2100241"," Anton "," Shakaplerov "," M ");
INSERT INTO current_staff (ServiceID,FName,LName,Gender) VALUES ("ast2100242"," Pytor "," Dubrov "," M ");
INSERT INTO current_staff (ServiceID,FName,LName,Gender) VALUES ("ast2100243"," Kayla "," Barron "," F ");
INSERT INTO current_staff (ServiceID,FName,LName,Gender) VALUES ("ast2100244"," Mark "," Vande Hei "," M ");



INSERT INTO mission_overview (service_id,Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES ("ast2100238"," 2021-10-17 "," 65 "," Soyuz MS-18 Land"," Completed");
INSERT INTO mission_overview (service_id,Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES ("ast2100239"," 2021-10-21 "," 64 "," ISS Progress 79 Launch "," Completed ");
INSERT INTO mission_overview (service_id,Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES ("ast2100240"," 2021-10-29 "," 63 "," ISS Progress 79 Dock   "," Completed ");
INSERT INTO mission_overview (service_id,Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES ("ast2100241"," 2021-11-08 "," 62 "," Crew 2 Undock "," Completed ");
INSERT INTO mission_overview (service_id,Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES ("ast2100242"," 2021-11-08 "," 61 "," Crew 2 Splashdown "," Completed ");
INSERT INTO mission_overview (service_id,Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES ("ast2100243"," 2021-11-10 "," 60 "," Crew 3 Launch "," Completed ");
INSERT INTO mission_overview (service_id,Timeline,Expedition_NO,Expedition_Name,Expedetion_Status) VALUES ("ast2100244"," 2021-11-11 "," 59 "," Crew 3 Dock   "," Completed ");


INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("NASA Selfies", " APU Shutdown ", "Not YET IMAGINED", " NASA's curious universe");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Augmented AR", " Computers are in control ", "Beyond the tube and wing", " Houston,We Have a Podcast");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("NASA Spinoff", " Go at throttle up ", "Green LIght for Green Flight", " NASA's curious universe");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("3D Sun", " Go for Deploy ", "Promise Denied", " NASA's curious universe");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Asteroid Redirect Mission(ARM)", " How do you read "," Three sigma leadership "," On a Mission");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Cassini", " Lookin' at it ", " Earth at night ", " The Invisible Network");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Curiosity", " MECO ", "Eart At Night", " Gravity Assist");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Go StarGaze", " Nice to be in orbit ", "Hubble Focus:Galaxies through Space and Time", " Welcome to Rocket Ranch");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Grail Mission App", " Press to ATO ", "Origins", " NASA in Silicon Valley");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("MESSENGER: Orbiting Mercury", " Roger Roll ", "ISS:Operating an outpost", "NASA Explorers: Apollo");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Moon Tours", " STS 26 litoff ", "Earth Book", " This WEEk @NASA");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("NASA Be A Martian", " Sound of Launch ", "Beyond Earth", " Space to Ground");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("NASA HIAD", " Vector transfer ", "The power of Flight", " What's up?");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("NASA Science: A Journey of Discovery", " Wheelstop ", "Through the eyes of Cassini", " Small Steps Giant Leaps");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("NASA Space Weather App", " We are going to dust it off First ", "Making the invisible Visible", " NASA ScienceCast");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("NASA Visualization Explorer", " That was definately an E-ticket ", "ISS:Benfits of humanity", " NASA Edge");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Space Communications and Navigation: NetworKing", " Litoff ", "ISS:Benfits of humanity(2nd)", " NASA 360");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Spacecraft 3D", " Litoff 2.0 ", "ISS:Benfits of humanity(3rd)", " NASA X");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Space Junk Sammy", " Sound of Launch ", "Walking to Olympus", " NASACast");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Hubblesite", " Shuttle Gear Drop ", "Unlimted Horizons", " __ ");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Night Sky Network", " Countdown to Launch ", "Elegance in Flight", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("NASA Science: A Journey of Discovery", " Launch Commentry ", "Cave the winds", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Space365", " Landing Commander Comments ", "Global each", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Space Images", " Landing Comments ", "A new twist in Flight Research", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("NASA Space Weather Media Viewer", " Fireflies ", "Sweeping Foreward", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("X-Ray Universe (Chandra X-Ray Observatory)", " Godspeed ", "iMagnetic Space", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Aquarius", " Zero G ", "Thinking Obliquely", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Earth as Art", " Status Update ", "Earth as Art", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Earth-Now", " Chourus Radio Within Eart's Atmoshphere ", "Pursuit of Power", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Globe Observer", " Quinder-Sound 1 ", "The Apollo of Aeronautics", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Images of Change", " Quinder-Sound 2 ", "When Biospheres Collide", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("NASA Science: A Journey of Discovery", " Beep ", "Breaking the Mishap Chain", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Night Sky Network", " SLS Test FIRE ", "Psychology of Space Exploration", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("NASA Space Weather Media Viewer", " SLS Test Fire ", "Cosmos & Culture", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Rescue 406", " APU Shutdown ", "Modelling Flight", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Satellite Insight: A GOES-R Game", " Plasma Sounds ", "Rockets & People Vol.1", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("Space Images", " Launch ", "Rockets & People Vol.4", " __");
INSERT INTO Products (Apps,Audio_and_Ringtone,Ebooks,Podcast) VALUES ("NASA Glenn Research Center: The Early Years", " Stardust ", "Rockets & People Vol.3", " __");




/* pantry and research */

INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Cheese "," Diary "," Refrigerated");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Cream Cheese "," Diary"," Refrigerated");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Yogurt "," Diary"," Refrigerated");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Apple"," Fruit"," Refrigerated");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Grapefruit"," Fruit"," Refrigerated");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Kiwi"," Fruit"," Refrigerated");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Orange"," Fruit"," Refrigerated");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Plum"," Fruit"," Refrigerated");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Beef, brisket, BBQ"," Meat and Eggs"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Beef, enchilada with spanish rice"," Meat and Eggs"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Beef, patty"," Meat and Eggs"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Beef, steak, bourbon"," Meat and Eggs"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Beef, stroganoff with noodles"," Meat and Eggs"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Meatloaf with mashed potatoes and gravy"," Meat and Eggs"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Chicken, baked"," Poultry"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Chicken, enchilada with spanish rice"," Poultry"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Chicken, grilled"," Poultry"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Chicken, stir fried with diced red pepper"," Poultry"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Meatball, porcupine (turkey)"," Poultry"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Chicken, teriyaki with spring vegetables"," Poultry"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Bacon"," Pork"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Bacon, Canadian"," Pork"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Pork, chop, baked with potatoes au gratin"," Pork"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Pork, sausage, patties"," Pork"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Pork, sweet and sour with rice"," Pork"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Fish, baked"," Seafood"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Fish, grilled"," Seafood"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Lobster, broiled tails"," Seafood"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Scallops, baked"," Seafood"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Seafood, gumbo with rice"," Seafood"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Shrimp, cocktail"," Seafood"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Tuna, noodle casserole"," "," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Egg, omelet, cheese"," Egg"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Egg, omelet, ham"," Egg"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Egg, omelet vegetable and ham"," Egg"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Egg, omelet, vegetable and sausage"," Egg"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Quiche, vegetable"," Egg"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Quiche, lorraine"," Egg"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Lasagna, vegetable with tomato sauce"," Pasta mixtures"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Spaghetti with tomato sauce"," Pasta mixtures"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Noodles, stir fry"," Pasta mixtures"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Tortellini with tomato sauce, cheese"," Pasta mixtures"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Beef, stew"," Soups"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Chicken, cream of"," Soups"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Mushroom, cream of"," Soups"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Fried"," Rice"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Mexican/Spanish"," Rice"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" White"," Rice"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Apple juice"," Beverages"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Grape juice"," Beverages"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Grapefruit juice"," Beverages"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Lemonade"," Beverages"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Orange juice"," Beverages"," Frozen");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Applesauce "," Fruit"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Fruit cocktail"," Fruit"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Peaches"," Fruit"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Pineapple"," Fruit"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Pears"," Fruit"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Chicken salad"," Salad"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Tuna salad"," Salad"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Chili"," Soups"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Egg drop"," Soups"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Miso, Japanese"," Soups"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Vegetable"," Soups"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Pudding, butterscotch"," Desserts"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Pudding, chocolate"," Desserts"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Pudding lemon"," Desserts"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Pudding, vanilla"," Desserts"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Pudding, tapioca"," Desserts"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Barbecue sauce"," Condiments"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Chili con queso"," Condiments"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Dill pickle chips"," Condiments"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Mayonnaise"," Condiments"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Mustard, hot Chinese"," Condiments"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Peanut butter (chunky, creamy, whipped)"," Condiments"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Picante sauce"," Condiments"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Taco sauce"," Condiments"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Tartar sauce"," Condiments"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Sweet and sour sauce"," Condiments"," Thermostabilized");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Apricots, dried"," Fruit"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Pear, dried"," Fruit"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Raisin"," Fruit"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Trail mix"," Fruit"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Animal crackers"," Grains"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Crackers, assorted"," Grains"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Baked chips, potato"," Grains"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Rye krisp, seasoned"," Grains"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Butter"," Cookies"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Chocolate chip"," Cookies"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Rice krispies treat"," Cookies"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Shortbread"," Cookies"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Almonds"," Nuts"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Cashews"," Nuts"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Macadamia"," Nuts"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Peanuts"," Nuts"," Natural Form");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Apple cider"," Beverages"," Rehydratable");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Cocoa"," Beverages"," Rehydratable");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Grapefruit drink"," Beverages"," Rehydratable");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Orange drink"," Beverages"," Rehydratable");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Orange pineapple drink"," Beverages"," Rehydratable");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Tea (assorted)"," Beverages"," Rehydratable");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Smoked turkey"," Meat"," Irradiated Meat");
INSERT INTO FoodItem(FoodName,ItemCategory,FoodType) VALUES (" Beef steak"," Meat"," Irradiated Meat");


INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 100"," 25"," 33"," 2"," 1.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 230"," 54","64 ","43 ","6.6 ");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("100 "," 2","23 ","23 "," 7.7");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 42","4 ","43","43 "," 8.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 43"," 3","23 ","23 "," 1.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("102 "," 42"," 97"," 42"," 5.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("303 ","44 "," 23"," 22"," 1.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("204 ","64 ","64 ","43 "," 0.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("102 "," 46"," 45"," 34"," 0.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("600 "," 13"," 42","46 "," 0.7");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 126"," 23"," 42","4 "," 0.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 562","4 ","23 ","4 "," 1.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("200 ","3 "," 13"," 32"," 2.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 203","23 "," 42","23 "," 4.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 320","24 "," 23","44 "," 0.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 302"," 34","23 ","5 "," 5.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("203 ","9 ","7 "," 4"," 5.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("302 ","7 ","5 "," 4"," 4.1");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 100"," 23"," 2","78 "," 3.2");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("384 ","45 "," 4"," 2"," 0.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("230 ","53 ","12 "," 5"," 0.7");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 43"," 2"," 42","12 ","2.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("522 ","41 ","13 "," 41"," 8.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("132 "," 4"," 3"," 2"," 5.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 131"," 75","64 ","53 "," 9.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("532 ","46 ","32"," 53"," 0.7");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("123 ","54 "," 43"," 53"," 0.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 212"," 42","3 ","54 "," 5.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 121","61 ","65 ","45 "," 8.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 321","45 ","76"," 76","7.7");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("34 "," 43","63 ","76 "," 9.7");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 121","54 ","33 ","43 "," 8.7");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 112"," 74"," 56"," 76"," 8.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("123 "," 64"," 45","23 "," 7.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("134 "," 54","64 "," 56"," 8.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("411 "," 45","64 "," 86"," 0.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("124	 ","97 "," 62","12 "," 2.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("32 "," 56","63","34 "," 4.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("564 ","7 "," 88","34 ","7.7 ");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("532 "," 54","53 "," 76"," 5.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("432 "," 64"," 54"," 72"," 8.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 24"," 44"," 43"," 42"," 7.9");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("23 ","34 "," 54"," 32"," 9.9");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("453 ","24 ","43 ","6 "," 9.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("532 ","5 "," 53","89 "," 7.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 422"," 33","56 ","78 "," 6.7");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("23 ","56 ","34 "," 95"," 7.7");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 223","53 ","89 "," 64"," 7.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 43"," 34"," 64"," 63"," 9.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 242"," 32"," 34"," 62"," 6.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("432 "," 32"," 61","53 "," 6.2");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("452 "," 42","4 "," 2"," 8.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("234 ","66 "," 53"," 42"," 9.2");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("53 ","56 ","75 "," 45"," 5.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("230 ","84"," 75"," 54"," 4.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 34"," 96"," 86","64 "," 6.1");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("46 ","56 "," 86"," 57"," 6.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 65","4 ","55 ","86 "," 9.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("46 "," 47","48","23 "," 8.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("65 ","17 "," 23"," 5"," 6.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 65","23 ","44 ","23 "," 6.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("75 ","42 "," 32","56 "," 9.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 55"," 45"," 53","23 "," 4.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 75"," 89","67 ","56 "," 4.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("56 "," 15","34 ","37 "," 2.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("56 ","43 "," 45"," 53"," 3.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("75","56 "," 45"," 35"," 4.2");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 55"," 67"," 47"," 56"," 5.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 786","67 "," 87"," 65"," 6.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 643","88 "," 75","37 "," 5.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("355 ","72 ","75 ","45 "," 6.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 75","23 ","25 "," 34"," 3.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 85","56 ","34 ","31 "," 5.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 76"," 4"," 12"," 14"," 9.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("65 ","45 "," 4"," 5"," 6.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 46"," 32"," 24","52 "," 5.2");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 78","32 ","42 "," 42"," 5.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("45 ","34"," 21"," 12"," 2.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 55"," 23"," 5","53 "," 5.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 78","2 ","3 "," 13"," 5.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 65","2 ","4 ","4 "," 2.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 67"," 3"," 43"," 4"," 3.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 87","45 ","3 ","5 " ," 5.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("86 "," 23"," 53"," 22"," 5.2");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("78 ","7 "," 8"," 6"," 5.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("55 ","4 ","4 "," 2"," 4.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("44","6 "," 4"," 2"," 3.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 44","4 ","3 "," 5"," 6.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("34 "," 5"," 3","5 "," 7.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 344","34 ","53 ","2 "," 9.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 22","45 ","3 ","3 "," 6.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 34","34 ","3 ","5 "," 5.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("53 ","4 "," 3"," 5"," 6.5 ");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 234","32 ","14"," 13"," 5.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("97 ","79 ","38 ","68 "," 4.6");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 109"," 39"," 45"," 64"," 5.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 88"," 76","66 "," 64"," 6.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("65 ","75 "," 34","5 "," 0.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("67 "," 75"," 43","66 "," 6.4");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 32"," 45"," 43"," 5 "," 2.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES ("100 "," 57"," 67"," 76"," 5.7");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 44"," 75","86 ","8 "," 4.3");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 432"," 45"," 32"," 5"," 0.5");
INSERT INTO Nutritional_Value(Energy,Protien,Fat,Water,Carbohydrates) VALUES (" 120"," 73","34 "," 13"," 2.5");


INSERT INTO Meal(Day,MealId,Food_Items) VALUES ("1"," A"," Eggs Scrambled w/Bacon, Hash,Browns, Sausage,Toast ,Margarine Jelly, Assorted, Apple Juice, Coffee/Tea/Cocoa");
INSERT INTO Meal(Day,MealId,Food_Items) VALUES ("1"," B"," Chicken, oven-fried, Macaroni and Cheese, Corn, whole kernel, Peaches, Almonds, Pineapple-Grapefruit, Juice");
INSERT INTO Meal(Day,MealId,Food_Items) VALUES ("1"," C"," Beef Fajita, Spanish Rice, Tortilla Chips, Picante Sauce, Chili con Queso, Tortilla, Lemon Bar, Apple Cider");
INSERT INTO Meal(Day,MealId,Food_Items) VALUES ("2"," A"," Cereal, cold Yogurt, fruit ,Biscuit Margarine Jelly, assorted Milk ,Cranberry Juice, Coffee/Tea/Cocoa");
INSERT INTO Meal(Day,MealId,Food_Items) VALUES ("2"," B"," Soup, cream of broccoli, Beef Patty , Cheese Slice, Sandwich Bun, Pretzels, Cried Apples, Vanilla Pudding, Chocolate Instant, Breakfast");
INSERT INTO Meal(Day,MealId,Food_Items) VALUES ("2"," C"," Fish, saut ed,Tartar Sauce,Lemon Juice,Pasta Salad,Green Beans,Bread,Margarine,Angel Food Cake,Strawberries,Orange-Pineapple Drink");
INSERT INTO Meal(Day,MealId,Food_Items) VALUES ("3"," A"," French Toast,Canadian Bacon,Margarine,Syrup,Orange Juice,Coffee/Tea/Cocoa");
INSERT INTO Meal(Day,MealId,Food_Items) VALUES ("3"," B"," Cheese Manicotti w/,Tomato Sauce,Garlic Bread,Berry Medley,Cookie, shortbread,Lemonade");
INSERT INTO Meal(Day,MealId,Food_Items) VALUES ("3"," C"," Turkey Breast, sliced,Mashed Sweet Potato,Asparagus Tips,Cornbread,Margarine,Pumpkin Pie,Cherry Drink");
INSERT INTO Meal(Day,MealId,Food_Items) VALUES ("4"," A","Cereal, hot,Cinnamon Roll,Milk,Grape Juice,Coffee/Tea/Cocoa");
INSERT INTO Meal(Day,MealId,Food_Items) VALUES ("4"," B"," Quiche Lorraine,Seasoned Rye Krisp,Fresh Orange,Cookies, Butter");
INSERT INTO Meal(Day,MealId,Food_Items) VALUES ("4"," C"," Soup, won ton,Chicken Teriyaki,Chinese Vegetables, stirfry,Egg Rolls,Hot Chinese Mustard,Sweet n Sour Sauce,Vanilla Ice Cream,Cookies, fortune,Tea");


INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Advanced Biological Research System","Biological Research","NASA","Jeffrey Williams","Advanced Biological Research System (ABRS) [NASA] is a singlelocker system providing two growth chambers. Each growth chamber is a closed system capable of independently controlling temperature, illumination and atmospheric composition to grow a variety of biological organisms including plants, microorganisms and small arthropods (insects and spiders).");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("BioLab Experiment Facility","Biological Research","ESA","Frank De Winne ","BioLab Experiment Laboratory (BioLab) [ESA] can be used to perform space biology experiments on microorganisms, cells, tissue cultures, small plants and small invertebrates. Such studies provide a better understanding of the effects of microgravity and space radiation on biological organisms. BioLab includes an incubator, a glovebox, two freezer units and two centrifuges to simulate the effects of gravity");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Kriogem-3M","Biological Research","Roscosmos"," Oleg Kononenko","Kriogem-3M [Roscosmos] is a refrigerator-incubator used for the stowage of biological samples or medical kits and for the culture and incubation of bioreactors such as Recomb-K, Lutch-2.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("TBU-N Low temperature incubator","Biological Research","Roscosmos","Sergey Ryzhikov","TBU-N Low temperature incubator [Roscosmos] provides a refrigerated environment for carrying out a variety of experiments in human life sciences, biology and biotechnology.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("TBU-V High-temperature incubator","Biological Research","Roscosmos","Anatoly Ivanishin","TBU-V High-temperature incubator [Roscosmos] enables a variety of experiments in human life sciences, biology and biotechnology at elevated temperatures.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Commercial Generic Bioprocessing Apparatus","Biological Research","NASA,Commercial","Mike Hopkins","The Commercial Generic Bioprocessing Apparatus (CGBA) [NASA, Commercial] provides programmable, accurate temperature control— from cold stowage to a customizable incubator designed for biotechnology experiments in microgravity. CGBA can be used in a wide variety of biological studies, such as protein crystal growth, small insect habitats and plant development, as well as antibiotic producing bacteria and cell culture studies.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Space Automated Bioproduct Laboratory","Biological Research","Nasa,Commercial"," Reid Wiseman","The Space Automated Bioproduct Laboratory (SABL) [NASA, Commercial] provides the researcher with advanced incubator technology and complements the existing CGBA incubator. SABL supports a wide variety of experiments to support the development of applications for use on Earth by pharmaceutical, biotechnology and agribusiness companies. SABL provides a  temperature range of -5°C to +43°C, and is designed to be user friendly for the crewmember");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("KUBIK","Biological Research","ESA"," Fyodor Yurchikhin","KUBIK [ESA] is a cubic box container measuring 37 cm3 and composed of a thermal chamber with a volume of 9.36 L, which can function both as an incubator or a cooler. It operates from 6°C to 38°C with a stability of 0.1°C. The thermal chamber can be equipped with removable inserts designed for maximal sample flexibility. The KUBIK has a centrifuge insert, which has a selectable acceleration from 0.2g to 2g in 0.1g increments.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Vegetable Production System","Biological Research","NASA","Kimiya Yui","The Vegetable Production System (Veggie) [NASA] is an advanced plant growth chamber that supports a variety of experiment objectives. The growth chamber is the largest on the ISS at this time and allows for larger-sized plants to be grown than in previous ISS experiments. Additionally, the large adjustable LED light bank makes Veggie an ideal facility for experiments requiring a controlled light source. The total plant growing area is 0.13 m2 , and water is provided passively to the rooting media using capillary connections to a reservoir.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("European Modular Cultivation System ","Biological Research","ESA, NASA","Thomas Reiter","European Modular Cultivation System (EMCS) [ESA, NASA] is an ESA experiment facility that is dedicated to studying plant biology in a reduced-gravity environment. It supports the cultivation, stimulation and crew-assisted operation of biological experiments under controlled conditions (e.g., temperature, atmospheric composition, water supply and illumination). The facility has performed multi-generation (seed-to-seed) experiments and studies the effects of gravity and light on early development and growth, signal perception and transduction in plant tropisms. Experiments with cell and tissue cultures are also being planned for the EMCS.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Plant Habitat","Biological Research","NASA","Rick Mastracchio","The Plant Habitat [NASA] is a fully automated facility that will be used to conduct plant bioscience research on the ISS. Plant Habitat provides a large, enclosed, environmentally controlled chamber designed to support commercial and fundamental plant research or other bioscience research onboard the International Space Station (ISS) for at least one year of continuous operation without maintenance and integrates proven microgravity plant growth technologies with newly developed fault tolerance and recovery technology to increase overall efficiency, reliability, and robustness");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Aquatic Habitat","Biological Research","JAXA, Roscosmos","Kevin Ford","Aquatic Habitat (AQH) [JAXA, Roscosmos], located in the MSPR facility, is designed for breeding small fresh-water Medaka or Zebrafish for up to 90 days in the microgravity environment in the ISS. Such fish provide many advantages as model animals for microgravity research of biological processes and systems. The AQH is composed of two aquariums that contain automatic feeding systems, day/night cycle LED lighting, charge-coupled device (CCD) cameras and a water quality control system comprised of a biological filter with nitrifying bacteria and a physical filter with activated charcoal for particulate and organic waste removal.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Microscope Observation System","Biological Research","JAXA","Karen Nyberg","The JAXA Microscope Observation System (Fluorescence Microscope) [JAXA] is located in the MSPR or in the cabin area. It is an inverted fluorescence microscope, a Leica DMI 6000B. It has 6 different objective lenses, with a monochrome CCD camera. The microscope is equipped with an LED illumination unit and can perform time-lapse videomicroscopy. It also is equipped with a stage heater (up to 40°C) to enable cell culture observation. The Fluorescence Microscope is controlled and remotely commanded from the ground once samples are placed into it by the onboard crew. It has been used for biology (cultured cell and fish larva) and plant experiments onboard the ISS/Kibo");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Muscle Atrophy Research Exercise System","Human Physiology and Adaptation Research","ESA"," Chris Hadfield and Tom Marshburn","Muscle Atrophy Research Exercise System (MARES) [ESA] is used for research on musculoskeletal, biomechanical and neuromuscular human physiology to better understand the effects of microgravity on these related systems. This instrument is capable of assessing the strength of isolated muscle groups around joints by controlling and measuring relationships between position/velocity and torque/ force as a function of time");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Advanced Resistive Exercise Device ","Human Physiology and Adaptation Research","NASA","Dan Burbank","Advanced Resistive Exercise Device (ARED) [NASA] provides resistive exercise capabilities to crewmembers on the ISS. The ARED also collects data regarding the parameters (loads, repetitions, stroke, etc.) associated with crew exercise, and transmits it to the ground.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Combined Operational Load Bearing External Resistive Exercise Treadmill","Human Physiology and Adaptation Research","NASA","Mikhail Kornienko","Combined Operational Load Bearing External Resistive Exercise Treadmill (COLBERT) [NASA] is an exercise treadmill that can be used to collect data such as body loading, duration of session, and speed for each crewmember.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Percutaneous Electrical Muscle Stimulator","Human Physiology and Adaptation Research","ESA","Andreas Mogensen","Percutaneous Electrical Muscle Stimulator (PEMS) [ESA] is a portable, self-contained neuromuscular research device that may be used standalone or in conjunction with other physiological instruments. The purpose of this device is to deliver electrical pulse stimulation to non-thoracic muscle groups of a human test subject, thereby creating contractile responses from the muscles. It is capable of providing single, variable amplitude pulses or pulse trains according to a pre-adjusted program.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Cycle Ergometer with Vibration Isolation System","Human Physiology and Adaptation Research","NASA","r Barry Wilmore","The Cycle Ergometer with Vibration Isolation System (CEVIS) [NASA] is a structurally isolated aerobic exercise cycle that serves as a countermeasure to cardiovascular deconditioning on orbit.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Combustion Integrated Rack","Physical Science Research","NASA","Frank De Winne","Combustion Integrated Rack (CIR) [NASA] is used to perform sustained, systematic combustion experiments in microgravity. It consists of an optics bench, a combustion chamber, a fuel and oxidizer management system, environmental management systems, interfaces for science diagnostics and experiment specific equipment, as well as 5 different cameras to observe the patterns of combustion in microgravity for a wide variety of gasses and materials. The CIR provides up to 90% of the required hardware to perform a majority of future microgravity combustion experiments onboard the ISS and the remaining 10% of the hardware (fuel, igniters, etc.) is provided by the specific investigation teams");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Advanced Combustion via Microgravity Experiments","Physical Science Research","NASA","Furukawa poses","The Advanced Combustion via Microgravity Experiments (ACME) [NASA] enables a suite of investigations and is focused on advanced combustion technology via fundamental microgravity research to improve efficiency and reduce pollutant emission in practical terrestrial combustion. The ACME investigations will operate in the CIR.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Materials Science Research Rack (MSRR-1)","Physical Science Research","ESA, NASA","Frank De Winne","Materials Science Research Rack (MSRR-1) [ESA, NASA] is a powerful multi-user facility that enables researchers by providing hardware to control the thermal, environmental and vacuum conditions of experiments, as well as monitor experiments using video, and supply power and data handling for experiment instrumentation.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Kobairo Rack (Kobairo)","Physical Science Research","JAXA","Cady Coleman","The Kobairo Rack (Kobairo) [JAXA] contains the Gradient Heating Furnace (GHF) [JAXA], which provides all utility interfaces for this material science furnace. The GHF is a vacuum furnace that contains 3 heating blocks, and is used mainly to conduct high-quality crystal growth experiments using unidirectional solidification. The 3 heater units can generate the high temperature gradients needed to produce large-scale pure crystals.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Additive Manufacturing Facility ","Physical Science Research","NASA,Commercial","Tim Kopra","The Additive Manufacturing Facility (AMF) [NASA, Commercial] enables the production of components on the ISS for both NASA and commercial objectives. Parts, entire experiments, and tools can be created on demand utilizing the AMF that is installed into an EXPRESS Rack locker location. The AMF is capable of producing parts out of a wide variety of thermopolymers, including engineered plastics.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Fluids Integrated Rack","Physical Science Research","NASA","Jeff Williams","Fluids Integrated Rack (FIR) [NASA] is a multi-user fluid physics research facility designed to accommodate and image a wide variety of microgravity fluid experiments. FIR features a large user-configurable volume for experiments. The FIR provides data acquisition and control, sensor interfaces, laser and white light sources, advanced imaging capabilities, power, cooling and other resources. The FIR will host fluid physics investigations into areas such as complex fluids (colloids, gels), instabilities (bubbles), interfacial phenomena (wetting and capillary action) and phase changes (boiling and cooling).");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Ryutai Rack (Ryutai)","Physical Science Research","JAXA","Koichi Wakata","Ryutai Rack (Ryutai) [JAXA] is a multipurpose, multi-user rack system that supports various fluid physics experiments. Ryutai consists of 4 sub-racks. Fluid Physics Experiment Facility (FPEF) [JAXA] is a multi-user experiment facility to investigate fluid physics phenomena in a microgravity environment. Solution Crystallization Observation Facility (SCOF) [JAXA] investigates morphology and growth of crystals.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Cosmic Ray Detectors and Ionosphere Probes","Earth and Space Science Research","Roscosmos","t Elena Serova","Cosmic Ray Detectors and Ionosphere Probes [Roscosmos] are important for ongoing studies of cosmic rays and the low-Earth orbit environment. Several external investigations and instrument packages are available including BTN-Neutron (neutron flux detector) and Vsplesk (gamma ray and high-energy charged particle detector). Obstanovka is another suite of detectors used to measure several ionosphere parameters and plasma-wave characteristics.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Photospectrometric System (FSS) ","Earth and Space Science Research","JAXA","Fyodor Yurchikhin","Photospectrometric System (FSS) is used for monitoring natural disasters (Uragan) and ecological monitoring (Econ). FSS uses a spectral range of 350-1050 nm and resolution of better than 3 nm. In all, this suit of instruments practically and efficiently increases the ability to perform scientific and Earth observation experiments from the ISS");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Window Observational Research Facility (WORF)","Earth and Space Science Research","NASA"," Ron Garan","The Window Observational Research Facility (WORF) [NASA] provides a unique ISS facility for conducting crew-tended or automatic Earth observation and scientific research using the Destiny module’s large optical-quality window. WORF is a multipurpose facility that provides structural support hardware, avionics, thermal conditioning and optical quality protection in support of a wide variety of remote sensing instruments and scientific investigation.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Crew Earth Observations","Earth and Space Science Research","NASA","Luca Parmitano","The Crew Earth Observations (CEO) Facility [NASA] utilizes the ISS crew and handheld, visible-wavelength digital cameras (currently Nikon D4 series) to photograph the Earth surface and atmosphere from low-Earth orbit. A variety of available camera lenses allows for both wide-field, low spatial resolution panoramic and Earth-limb imagery (useful for atmospheric science studies), and very high spatial resolution (~ 3 meters/pixel), targeted ground imagery that supports urban, environmental, coastal, agricultural and geologic research and applications.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Sun Monitoring on the External Payload Facility of Columbus","Earth and Space Science Research","ESA","Hurricane Matthew","Sun Monitoring on the External Payload Facility of Columbus (Solar) [ESA] was a monitoring observatory that measured the solar spectral irradiance");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Global Transmission Services (GTS)","Technology Demonstration Research","ESA","Jeff Williams","Global Transmission Services (GTS) [ESA, Roscosmos] is a continuously operating facility, located within the Russian Segment of the ISS, which tests the receiving conditions of time and data signals from dedicated receivers on the ground. Special coding of the time signal allows the receiver to determine the local time anywhere on the Earth. The main objective of this hardware is to verify the performance and accuracy of a time signal transmitted to the Earth’s surface");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Bar","Technology Demonstration Research","Roscosmos","Roman Romanenko","Bar [Roscosmos] uses a unique set of instruments for conducting ultrasonic probing, measuring and mapping spacecraft temperatures and pyroendoscopic analysis of potentially dangerous locations and conditions onboard the ISS as a result of material degradation or corrosion during operations in orbit. Zones of possible formation of condensation have been revealed, and potential corrosion damage has been evaluated.");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Space Communications and Navigation Testbed","Technology Demonstration Research","NASA","Koichi Wakata","The Space Communications and Navigation Testbed (SCAN Testbed) [NASA] consists of a set of reconfigurable software defined radios (SDRs), which have software that can be modified on orbit to allow users to test multiple radio frequency bands using the same hardware. By providing reconfigurable software to an existing radio platform, SCAN Testbed allows different radio vendors the ability to demonstrate unique radio configurations based on the common Space Telecommunications Radio System architecture standard. T");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Proboy (Puncture)","Technology Demonstration Research","Roscosmos","Elena Serova","Proboy (Puncture) [Roscos - mos] tests a method associ - ated with fast detection of point of puncture coordi - nates in the ISS module hull (made by a high-speed micrometeoroid or techno - genic particles) with detec - tion of acoustic waves in the module’s cabin air");
INSERT INTO Research(Research,Category, Organisation,Researcher,Overview) VALUES("Vibrolab","Technology Demonstration Research","Roscosmos","Roman Romanenko","Vibrolab [Roscosmos] tests and fine-tunes methods and instruments for monitoring of microaccelerations aboard the ISS Russian Segment associated with implementation of research programs in a microgravity environment");

/* queries on DB*/
show databases;
use iss_project;
select * from employees;
select * from current_staff;
select * from electrical_items;
select * from tools;
select * from employees;


select fname,lname from current_staff where gender = 'M';

select * from Nutritional_Value where energy > 100 AND protien < 60;

select * from Nutritional_Value where fat <50 order by carbohydrates DESC;

select emp_name, emp_nationality from employees
group by emp_nationality
order by emp_name;

select emp_nationality,count(emp_nationality) from employees
group by emp_nationality
having count(emp_nationality)>4;


