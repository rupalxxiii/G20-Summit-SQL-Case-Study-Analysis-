# G20-Summit-SQL-Case-Study-Analysis-

# SQL Case Study Analysis


use G20;


-- 1. Find the G20 Summit with the longest duration?

 SELECT * ,DATEDIFF(EndDate,StartDate) AS Longest_duration
FROM G20_Summits
ORDER BY Longest_duration DESC
LIMIT 1;

 
-- 2. Find the G20 Summit hosted by the leader with the longest name?


SELECT gs.SummitID
      ,gs.HostCountry
      ,gs.HostLeader
      ,MAX(LENGTH(mc.LeaderName)) AS MaxLeaderNameLength
FROM G20_Summits AS gs
JOIN  MemberCountries AS mc ON gs.HostCountry = mc.CountryName
GROUP BY gs.SummitID
ORDER BY MaxLeaderNameLength DESC
LIMIT 1;


-- 3. Find the total number of International Organizations participating in the 18th G20 Summit?


SELECT COUNT(DISTINCT(oi.OrgID)) AS TotalInternationalOrgs
FROM G20_InternationalOrgRelations AS gir
JOIN InternationalOrganizations oi ON gir.OrgID = oi.OrgID
WHERE gir.SummitID = 18;


-- 4. Find the International Organizations that did not participate in the 18th G20 Summit?


SELECT io.OrgID
      ,io.OrgName
FROM  InternationalOrganizations AS io
WHERE io.OrgID NOT IN 
(
  SELECT gi.OrgID
  FROM G20_InternationalOrgRelations AS gi
);


-- 5. Find the number of events scheduled for the 18th G20 Summit.


SELECT COUNT(DISTINCT(EventID)) AS Number_of_events
FROM G20_SummitSchedule
WHERE SummitID = 18;


-- 6. Find the date of the first event and the date of the last event for the 18th G20 Summit?


SELECT MIN(EventDate) AS FirstEventDate
      ,MAX(EventDate) AS LastEventDate
FROM G20_SummitSchedule
WHERE SummitID = 18;


-- 7. Find the G20 Summit events that are scheduled in a virtual mode?


SELECT EventID
      ,EventName
      ,EventDate
      ,EventLocation
FROM G20_SummitSchedule
WHERE EventLocation LIKE "Virtual%" AND SummitID = 18;


-- 8. Find the G20 Summit events that took place in Pune and Mumbai?


SELECT EventID
      ,EventName
      ,EventDate
      ,EventLocation
FROM G20_SummitSchedule
WHERE EventLocation ="Pune" OR EventLocation ="Mumbai";


-- 9.Rank G20 Summit events by their start dates using the DENSE_RANK function?


SELECT SummitID
      ,StartDate
      ,DENSE_RANK() OVER ( ORDER BY StartDate) AS DenseRank
FROM G20_Summits ;


-- 10. Rank G20 Summit events based on their event dates?


SELECT EventID	
      ,EventName
      ,EventDate
      ,RANK() OVER(PARTITION BY SummitID ORDER BY EventDate ) AS EventRank
FROM G20_SummitSchedule ;


-- 11.Concatenate the HostCountry, Venue, and HostLeader columns in the G20_Summits table to create a summary of each summit?


SELECT SummitID
      ,CONCAT(HostCountry," ","hosted at"," ",Venue," ","led by"," ",HostLeader) AS SummitSummary
FROM  G20_Summits;
    
    
-- 12. Calculate the duration (in days) of each G20 Summit?


SELECT SummitID
      ,StartDate
      ,EndDate
      ,DATEDIFF(EndDate,StartDate) AS DurationInDays
FROM G20_Summits;

 
-- 13.Find G20 Summits with the case when the HostCountry is 'India,' mark them as 'Upcoming,' and all others as 'Historical'?


SELECT SummitID
      ,StartDate
      ,HostCountry
      ,CASE 
          WHEN HostCountry = "India" THEN "Upcoming"
          ELSE "Historical" 
          END AS SummitStatus
FROM G20_Summits;
    
    
-- 14. Convert the LeaderTitle names of MemberCountries to lowercase and convert the CountryName names to uppercase ?


SELECT CountryID
      ,UPPER(CountryName) AS UppercaseCountryName
      ,LOWER(LeaderTitle) AS LowercaseLeaderTitle
FROM MemberCountries;


-- 15.Find the previous and next G20 Summit event for each event based on their EventDate ?



SELECT EventID
      ,EventName
      ,EventDate
      ,LAG(EventName) OVER(ORDER BY EventDate)  AS PreviousEvent
      ,LEAD(EventName) OVER(ORDER BY EventDate) AS NextEvent
FROM G20_SummitSchedule;


