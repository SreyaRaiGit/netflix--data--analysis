CREATE DATABASE netflix_projects;
USE netflix_projects; 
SELECT * FROM netflix 
LIMIT 10; 

--- Count Movies vs  TV Shows 

SELECT type , COUNT(*) 
FROM netflix 
GROUP BY type;  

--- Top 5 Countries 

SELECT country, COUNT(*) AS Total 
FROM netflix 
GROUP BY country 
ORDER BY country DESC
LIMIT 5 ;  

--- Content added per year 

SELECT * FROM netflix ; 
SELECT YEAR(date_added), COUNT(*) 
FROM netflix
GROUP BY YEAR(date_added); 

--- Most Common Rating 

SELECT rating, COUNT(*) 
FROM netflix 
GROUP BY rating
ORDER BY COUNT(*) DESC; 

