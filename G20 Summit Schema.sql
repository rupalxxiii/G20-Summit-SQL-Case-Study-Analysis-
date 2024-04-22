create database G20;

use G20;


-- Table for G20 Summits
CREATE TABLE G20_Summits (
    SummitID INT PRIMARY KEY,
    StartDate DATE,
    EndDate DATE,
    HostCountry VARCHAR(255),
    Venue VARCHAR(255),
    HostLeader VARCHAR(255)
);

Drop TABLE G20_Summits;

-- Table for Member Countries
CREATE TABLE MemberCountries (
    CountryID INT PRIMARY KEY,
    CountryName VARCHAR(255),
    LeaderName VARCHAR(255),
    LeaderTitle VARCHAR(255)
);

Drop table MemberCountries;

-- Table for Guest Countries
CREATE TABLE GuestCountries (
    CountryID INT PRIMARY KEY,
    CountryName VARCHAR(255),
    LeaderName VARCHAR(255),
    LeaderTitle VARCHAR(255)
);

Drop table GuestCountries;

-- Table for International Organizations
CREATE TABLE InternationalOrganizations (
    OrgID INT PRIMARY KEY,
    OrgName VARCHAR(255)
);

Drop table InternationlOrganizations;

-- Table for G20 Summit-International Organization Relations
CREATE TABLE G20_InternationalOrgRelations (
    RelationID INT AUTO_INCREMENT PRIMARY KEY,
    SummitID INT,
    OrgID INT
);

Drop TABLE G20_InternationalOrgRelations;

-- Table for G20 Summit Schedule
CREATE TABLE G20_SummitSchedule (
    EventID INT PRIMARY KEY,
    SummitID INT,
    EventName VARCHAR(255),
    EventDate DATE,
    EventLocation VARCHAR(255)
);

Drop TABLE G20_SummitSchedule;

-- Insert G20 Summits
INSERT INTO G20_Summits (SummitID, StartDate, EndDate, HostCountry, Venue, HostLeader)
VALUES
(1, '2008-11-14', '2008-11-15', 'United States', 'National Building Museum, Washington, D.C', 'George W. Bush'),
(2, '2009-04-02', '2009-04-02', 'United Kingdom', 'ExCeL London, London', 'Gordon Brown'),
(3, '2009-09-24', '2009-09-25', 'United States', 'David L. Lawrence Convention Center, Pittsburgh', 'Barack Obama'),
(4, '2010-06-26', '2010-06-27', 'Canada', 'Metro Toronto Convention Centre, Toronto', 'Stephen Harper'),
(5, '2010-11-11', '2010-11-12', 'South Korea', 'COEX Convention & Exhibition Center, Seoul', 'Lee Myung-bak'),
(6, '2011-11-03', '2011-11-04', 'France', 'Palais des Festivals, Cannes', 'Nicolas Sarkozy'),
(7, '2012-06-18', '2012-06-19', 'Mexico', 'Los Cabos Convention Center, San José del Cabo, Los Cabos', 'Felipe Calderón'),
(8, '2013-09-05', '2013-09-06', 'Russia', 'Constantine Palace, Saint Petersburg', 'Vladimir Putin'),
(9, '2014-11-15', '2014-11-16', 'Australia', 'Brisbane Convention & Exhibition Centre, Brisbane', 'Tony Abbott'),
(10, '2015-11-15', '2015-11-16', 'Turkey', 'Regnum Carya Hotel Convention Centre, Serik, Antalya', 'Recep Tayyip Erdoğan'),
(11, '2016-09-04', '2016-09-05', 'China', 'Hangzhou International Exhibition Centre, Hangzhou', 'Xi Jinping'),
(12, '2017-07-07', '2017-07-08', 'Germany', 'Hamburg Messe, Hamburg', 'Angela Merkel'),
(13, '2018-11-30', '2018-12-01', 'Argentina', 'Costa Salguero Center, Buenos Aires', 'Mauricio Macri'),
(14, '2019-06-28', '2019-06-29', 'Japan', 'Intex Osaka, Osaka', 'Shinzō Abe'),
(15, '2020-11-21', '2020-11-22', 'Saudi Arabia', 'King Abdullah Financial District, Riyadh', 'Salman'),
(16, '2021-10-30', '2021-10-31', 'Italy', 'Rome', 'Giuseppe Conte'),
(17, '2022-11-15', '2022-11-16', 'Indonesia', 'The Apurva Kempinski, Bali', 'Joko Widodo'),
(18, '2023-09-09', '2023-09-10', 'India', 'Pragati Maidan Convention Centre, New Delhi', 'Narendra Modi');


-- Insert Member Countries
INSERT INTO MemberCountries (CountryID, CountryName, LeaderName, LeaderTitle)
VALUES
(1, 'India', 'Narendra Modi', 'Prime Minister'),
(2, 'Argentina', 'Alberto Fernández', 'President'),
(3, 'Australia', 'Anthony Albanese', 'Prime Minister'),
(4, 'Brazil', 'Luiz Inácio Lula da Silva', 'President'),
(5, 'Canada', 'Justin Trudeau', 'Prime Minister'),
(6, 'China', 'Xi Jinping', 'President'),
(7, 'France', 'Emmanuel Macron', 'President'),
(8, 'Germany', 'Olaf Scholz', 'Chancellor'),
(9, 'Indonesia', 'Joko Widodo', 'President'),
(10, 'Italy', 'Giorgia Meloni', 'Prime Minister'),
(11, 'Japan', 'Fumio Kishida', 'Prime Minister'),
(12, 'Mexico', 'Andrés Manuel López Obrador', 'President'),
(13, 'Russia', 'Vladimir Putin', 'President'),
(14, 'Saudi Arabia', 'Salman bin Abdulaziz Al Saud', 'King'),
(15, 'South Africa', 'Cyril Ramaphosa', 'President'),
(16, 'South Korea', 'Yoon Suk-yeol', 'President'),
(17, 'Turkey', 'Recep Tayyip Erdoğan', 'President'),
(18, 'United Kingdom', 'Rishi Sunak', 'Prime Minister'),
(19, 'United States', 'Joe Biden', 'President'),
(20, 'European Union', 'Ursula von der Leyen', 'President of the European Commission'),
(21, 'European Union', 'Charles Michel', 'President of the European Council');


-- Insert Guest Countries
INSERT INTO GuestCountries (CountryID, CountryName, LeaderName, LeaderTitle)
VALUES
(1, 'Bangladesh', 'Sheikh Hasina', 'Prime Minister'),
(2, 'Comoros', 'Azali Assoumani', 'President'),
(3, 'Egypt', 'Abdel Fattah el-Sisi', 'President'),
(4, 'Mauritius', 'Pravind Jugnauth', 'Prime Minister'),
(5, 'Netherlands', 'Mark Rutte', 'Prime Minister'),
(6, 'Nigeria', 'Bola Ahmed Tinubu', 'President'),
(7, 'Oman', 'Haitham bin Tariq', 'Sultan'),
(8, 'Rwanda', 'Paul Kagame', 'President'),
(9, 'Singapore', 'Lee Hsien Loong', 'Prime Minister'),
(10, 'Spain', 'Pedro Sánchez', 'Prime Minister'),
(11, 'United Arab Emirates', 'Mohamed bin Zayed Al Nahyan', 'President');


-- Insert International Organizations
INSERT INTO InternationalOrganizations (OrgID, OrgName)
VALUES
(1, 'Asian Development Bank'),
(2, 'Coalition for Disaster Resilient Infrastructure'),
(3, 'Financial Stability Board'),
(4, 'International Monetary Fund'),
(5, 'International Labour Organization'),
(6, 'International Solar Alliance'),
(7, 'United Nations'),
(8, 'World Bank'),
(9, 'World Health Organization'),
(10, 'World Trade Organization');

-- Insert relations for the 18th G20 Summit (India)
INSERT INTO G20_InternationalOrgRelations (SummitID, OrgID)
VALUES
(18, 1), -- Asian Development Bank
(18, 2), -- Coalition for Disaster Resilient Infrastructure
(18, 3), -- Financial Stability Board
(18, 4), -- International Monetary Fund
(18, 5), -- International Labour Organization
(18, 6), -- International Solar Alliance
(18, 7), -- United Nations
(18, 8), -- World Bank
(18, 9); -- World Health Organization


-- Insert values into the G20_SummitSchedule table
INSERT INTO G20_SummitSchedule (EventID, SummitID, EventName, EventDate, EventLocation)
VALUES
(1, 18, '1st Sherpa meeting', '2022-12-13', 'Udaipur'),
(2, 18, '1st Finance & Central Bank Deputies Meeting', '2022-12-13', 'Bengaluru'),
(3, 18, '1st Development Working Group Meeting', '2022-12-16', 'Mumbai'),
(4, 18, '1st Framework Working Group Meeting', '2022-12-20', 'Bengaluru'),
(5, 18, '1st Joint Finance and Health Task Force Meeting', '2023-01-09', 'Virtual mode'),
(6, 18, '1st Meeting for the Global Partnership for Financial Inclusion', '2023-01-16', 'Kolkata'),
(7, 18, '1st Infrastructure Working Group Meeting', '2023-01-18', 'Pune'),
(8, 18, '1st Health Working Group Meeting', '2023-01-30', 'Thiruvananthapuram'),
(9, 18, '1st International Financial Architecture Working Group Meeting', '2023-02-02', 'Chandigarh'),
(10, 18, '1st Education Working Group Meeting', '2023-01-31', 'Chennai'),
-- Continue inserting the remaining G20 Summit events
(11, 18, '1st Employment Working Group Meeting', '2023-02-02', 'Jodhpur'),
(12, 18, '1st Sustainable Finance Working Group Meeting', '2023-02-05', 'Guwahati'),
(13, 18, '1st Energy Transitions Working Group Meeting', '2023-02-07', 'Bengaluru'),
(14, 18, '1st Tourism Working Group Meeting', '2023-02-09', 'Rann of Kutch'),
(15, 18, '1st Environment and Climate Working Group Meeting', '2023-02-13', 'Bengaluru'),
(16, 18, '1st Agriculture Working Group Meeting', '2023-02-13', 'Indore'),
(17, 18, '1st DEWG – Seminar on Digital Inclusion & Excursion', '2023-02-22', 'Lucknow'),
(18, 18, '1st FMCBG and 2nd FCBD Meeting', '2023-02-23', 'Bengaluru'),
(19, 18, '1st Culture Working Group Meeting', '2023-03-01', 'Khajuraho'),
(20, 18, 'G20 Foreign Ministers Meeting', '2023-03-01', 'Delhi'),
(21, 18, '1st Anti-Corruption Working Group Meeting', '2023-03-06', 'Gurugram'),
(22, 18, '2nd Meeting for the Global Partnership for Financial Inclusion', '2023-03-15', 'Hyderabad'),
(23, 18, '2nd Education Working Group Meeting', '2023-03-20', 'Amritsar'),
(24, 18, '2nd Joint Finance-Health Task Force Meeting', '2023-03-21', 'Virtual mode'),
(25, 18, '2nd Sustainable Finance Working Group Meeting', '2023-03-24', 'Udaipur'),
(26, 18, '2nd Framework Working Group Meeting', '2023-03-27', 'Chennai'),
(27, 18, '2nd Environment and Climate Working Group Meeting', '2023-03-28', 'Gandhinagar'),
(28, 18, '1st Trade & Investment Working Group Meeting', '2023-03-29', 'Mumbai'),
(29, 18, '2nd Agriculture Working Group Meeting', '2023-03-30', 'Visakhapatnam'),
(30, 18, '1st Disaster Management Working Group Meeting', '2023-03-30', 'Chandigarh'),
(31, 18, '1st Disaster Management Working Group Meeting', '2023-03-30', 'Gandhinagar'),
(32, 18, '2nd Sherpa Meeting', '2023-03-30', 'Kumarakom'),
(33, 18, '2nd International Financial Architecture Working Group Meeting', '2023-04-01', 'Paris'),
(34, 18, '2nd Tourism Working Group Meeting', '2023-04-02', 'Siliguri/Darjeeling'),
(35, 18, '2nd Energy Working Group Meeting', '2023-04-03', 'Gandhinagar'),
(36, 18, '2nd Employment Working Group Meeting', '2023-04-06', 'Guwahati'),
(37, 18, '2nd Development Working Group Meeting', '2023-06-11', 'New Delhi'),
(38, 18, 'Development Ministers Meeting', '2023-06-12', 'Varanasi'),
(39, 18, '3rd Digital Economy Working Group Meeting', '2023-06-12', 'Pune'),
(40, 18, '3rd Framework Working Group Meeting', '2023-06-15', 'Kochi'),
(41, 18, '3rd Agriculture Deputies Meeting', '2023-06-17', 'Hyderabad'),
(42, 18, 'Agriculture Ministers Meeting', '2023-06-19', 'Hyderabad'),
(43, 18, '4th Tourism Working Group Meeting', '2023-06-19', 'Goa'),
(44, 18, '2nd Trade & Investment Working Group Meeting', '2023-06-19', 'Kevadia'),
(45, 18, '3rd Sustainable Finance Working Group Meeting', '2023-06-20', 'Mahabalipuram'),
(46, 18, '4th Education Working Group Meeting', '2023-06-21', 'Pune'),
(47, 18, 'Tourism Ministers Meeting', '2023-06-22', 'Goa'),
(48, 18, 'Education Ministers Meeting', '2023-06-22', 'Pune'),
(49, 18, '3rd Meeting for the Global Partnership for Financial Inclusion', '2023-06-22', 'Bali'),
(50, 18, '3rd Joint Health-Finance Task Force Meeting', '2023-06-26', 'Virtual'),
(51, 18, '3rd Infrastructure Working Group Meeting', '2023-07-10', 'Rishikesh'),
(52, 18, '3rd Sherpa Meeting', '2023-07-13', 'Hampi'),
(53, 18, '3rd Trade & Investment Working Group Meeting', '2023-07-14', 'Bengaluru'),
(54, 18, '3rd Finance and Central Bank Deputies Meeting', '2023-07-15', 'Gandhinagar'),
(55, 18, '3rd Culture Working Group Meeting', '2023-07-17', 'Hampi'),
(56, 18, '3rd Finance Ministers and Central Bank Governors Meeting', '2023-07-19', 'Gandhinagar'),
(57, 18, '4th Energy Transitions Working Group Meeting', '2023-07-19', 'Goa'),
(58, 18, '4th Employment Working Group Meeting', '2023-07-21', 'Indore'),
(59, 18, 'Labour and Employment Ministers Meeting', '2023-07-22', 'Indore'),
(60, 18, 'Energy Ministers Meeting', '2023-07-24', 'Goa'),
(61, 18, '3rd Disaster Risk Reduction Working Group Meeting', '2023-07-26', 'Chennai'),
(62, 18, '4th Environment and Climate Sustainability Working Group Meeting', '2023-07-28', 'Chennai'),
(63, 18, 'Environment and Climate Sustainability Ministers Meeting', '2023-08-09', 'Chennai'),
(64, 18, 'Anti-Corruption Ministers Meeting', '2023-08-09', 'Kolkata'),
(65, 18, 'Ministerial Meeting on Women’s Empowerment', '2023-08-10', 'Gandhinagar'),
(66, 18, 'Joint Health-Finance Ministers Meeting', '2023-08-16', 'Gandhinagar'),
(67, 18, '4th Digital Economy Working Group Meeting', '2023-08-17', 'Bengaluru'),
(68, 18, '4th Health Working Group Meeting', '2023-08-18', 'Gandhinagar'),
(69, 18, 'Health Working Group Ministers Meeting', '2023-08-19', 'Gandhinagar'),
(70, 18, 'Digital Economy Working Group Ministers Meeting', '2023-08-21', 'Bengaluru'),
(71, 18, '4th Trade & Investment Working Group', '2023-08-23', 'Jaipur'),
(72, 18, 'Culture Ministers Meeting', '2023-08-24', 'Varanasi'),
(73, 18, 'Trade & Investment Ministers Meeting', '2023-09-03', 'Jaipur'),
(74, 18, '4th Sherpa Meeting', '2023-09-05', 'New Delhi'),
(75, 18, '4th Finance and Central Bank Deputies Meeting', '2023-09-06', 'New Delhi'),
(76, 18, 'Joint Sherpas and Finance Deputies Meeting', '2023-09-07', 'New Delhi'),
(77, 18, 'Joint Finance and Energy Deputies Meeting', '2023-09-08', 'New Delhi'),
(78, 18, 'Joint Finance and Energy Ministers Meeting', '2023-09-09', 'New Delhi'),
(79, 18, 'G20 Summit', '2023-09-09', 'New Delhi');




select * from G20_Summits;

select * from InternationalOrganizations;

select * from GuestCountries;

select * from MemberCountries;

select * from G20_Summitschedule;

select * from G20_InternationalOrgRelations;
