-- 1. Find the title of each film

  SELECT Title FROM movies;

-- 2. Find the director of each film

   SELECT Director FROM movies;

-- 3. Find the title and director of each film

  SELECT Title, Director FROM movies;

-- 4. Find the title and year of each film

  SELECT Title, Year FROM movies;

-- 5. Find all the information about each film

  SELECT * FROM movies;

-- 6. Find the movie with a row id of 6

  SELECT Title FROM movies where ID = 6;

-- 7. Find the movies released in the years between 2000 and 2010

  SELECT Title FROM movies where Year Between '2000' and '2010';

-- 8. Find the movies not released in the years between 2000 and 2010

  SELECT Title FROM movies where Year not Between '2000' and '2010';

-- 9. Find the first 5 Pixar movies and their release year

  SELECT Title, Year FROM movies where ID in (1,2,3,4,5);

-- 10. Find all the Toy Story movies 

  SELECT * FROM movies where Title like 'Toy Story%';

-- 11. Find all the movies directed by John Lasseter

  SELECT * FROM movies where Director like 'John Lasseter';

-- 12. Find all the movies (and director) not directed by John Lasseter

  SELECT * FROM movies where Director != 'John Lasseter';

-- 13. Find all the WALL-* movies

  SELECT * FROM movies where Title like 'WALL-%';

-- 14. List all directors of Pixar movies (alphabetically), without duplicates 

  SELECT distinct Director FROM movies order by Director Asc;

-- 15. List the last four Pixar movies released (ordered from most recent to least)

  SELECT * FROM movies where ID in (4,3,8,12) order by Year Desc;

-- 16. List the first five Pixar movies sorted alphabetically

  SELECT * FROM movies where Id in (13,3,9,8,5) order by Title Asc;

-- 17. List the next five Pixar movies sorted alphabetically

  SELECT * FROM movies where ID in (4,7,10,6,11) order by Title Asc;

-- 18. List all the Canadian cities and their populations 

  SELECT * FROM north_american_cities where Country = "Canada";

-- 19. Order all the cities in the United States by their latitude from north to south

  SELECT * FROM north_american_cities where Country = "United States" order by Latitude Desc;

-- 20. List all the cities west of Chicago, ordered from west to east

  

-- 21. List the two largest cities in Mexico (by population)

  SELECT * FROM north_american_cities where Country = "Mexico" order by Population Desc limit 2;

-- 22. List the third and fourth largest cities (by population) in the United States and their population

  SELECT * FROM north_american_cities where Country = "United States" order by Population Desc limit 2 offset 2;
