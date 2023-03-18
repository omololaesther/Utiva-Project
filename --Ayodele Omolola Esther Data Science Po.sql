--Ayodele Omolola Esther Data Science PostgreSQL Assignment 2

-- Q1. How many countries have played in the world cup(5 years)?

WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points
		FROM 
			fifa_2018
	)
	
	SELECT 
		COUNT(DISTINCT team)
	FROM
		all_world_cup;


-- Q2. Get the total games played, win, loss, Goal for & against.

WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
	    )

        SELECT 
            SUM(game_played) AS total_games_played,
            SUM(win) AS total_win,
            SUM(loss) AS total_loss,
            SUM(goals_for) AS total_gf,
            SUM(goals_against) AS total_ga
        FROM
            all_world_cup;


-- Q3. The country with the highest and lowest appearance in the last five years?

WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT 
			MAX(DISTINCT team) AS highest_country,
			MIN(DISTINCT team) AS lowest_country
		FROM
			all_world_cup;


-- Q4. The country with the highest and lowest games played?

WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT
			team,
			MAX(DISTINCT game_played) AS HighestGamePlayed,	
			MIN(DISTINCT game_played) AS LowestGamePlayed
		FROM
			all_world_cup
		GROUP BY
			team
		ORDER BY
			MAX(DISTINCT game_played) DESC,
			MIN(DISTINCT game_played) ASC;


--Q5. The country with the highest and lowest games won?
--THE COUNTRY WITH THE HIGHEST NUMBER OF GAMES WON IS BRAZIL
WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT
			team,
			MAX(DISTINCT win) AS HighestWins
		FROM
			all_world_cup
		GROUP BY
			team
		ORDER BY
			MAX(DISTINCT win) DESC;
--THE COUNTRY WITH THE LOWEST NUMBER OF GAMES WON IS SERBIA & MONTENEGRO
WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT
			team,
			MIN(DISTINCT win) AS LowestWins
		FROM
			all_world_cup
		GROUP BY
			team
		ORDER BY
			MIN(DISTINCT win) ASC;
			

--Q6. The country with the highest and lowest games lost?
--THE COUNTRY WITH THE HIGHEST NUMBER OF GAMES LOST IS TOGO
WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT
			team,
			MAX(DISTINCT loss) AS Highestloss
		FROM
			all_world_cup
		GROUP BY
			team
		ORDER BY
			MAX(DISTINCT loss) DESC;
--THE COUNTRY WITH THE LOWEST NUMBER OF GAMES LOST IS NEW ZEALAND
WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT
			team,
			MIN(DISTINCT loss) AS Lowestloss
		FROM
			all_world_cup
		GROUP BY
			team
		ORDER BY
			MIN(DISTINCT loss) ASC;


--Q7. The country with the highest and lowest goals for?
--THE COUNTRY WITH THE HIGHEST NUMBER OF GOALS FOR IS GERMANY
WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT
			team,
			MAX(DISTINCT goals_for) AS HighestGoalFor
		FROM
			all_world_cup
		GROUP BY
			team
		ORDER BY
			MAX(DISTINCT goals_for) DESC;
--THE COUNTRY WITH THE LOWEST NUMBER OF GOALS FOR IS SAUDI ARABIA
WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT
			team,
			MIN(DISTINCT goals_for) AS LowestGoalFor
		FROM
			all_world_cup
		GROUP BY
			team
		ORDER BY
			MIN(DISTINCT goals_for) ASC;


--Q8. The country with the highest and the lowest goals against?
--THE COUNTRY WITH THE HIGHEST NUMBER OF GOALS AGAINST IS BRAZIL
WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT
			team,
			MAX(DISTINCT goals_against) AS HighestGoalAgainst
		FROM
			all_world_cup
		GROUP BY
			team
		ORDER BY
			MAX(DISTINCT goals_against) DESC;
--THE COUNTRY WITH THE LOWEST NUMBER OF GOALS AGAINST IS SWITZERLAND
WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT
			team,
			MIN(DISTINCT goals_against) AS LowestGoalAgainst
		FROM
			all_world_cup
		GROUP BY
			team
		ORDER BY
			MIN(DISTINCT goals_against) ASC;
			
--Q9. The country with the highest and lowest goals difference?
--THE COUNTRY WITH THE HIGHEST GOAL DIFFERENCE IS .....
WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT
			team,
			MAX(goal_differences) AS HighestGoalDifferences
		FROM
			all_world_cup
		GROUP BY
			team
		ORDER BY
			MAX(goal_differences) DESC;
--THE COUNTRY WITH THE LOWEST GOAL DIFFERENCE IS .....
WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT
			team,
			MIN(goal_differences) AS LowestGoalDifferences
		FROM
			all_world_cup
		GROUP BY
			team
		ORDER BY
			MIN(goal_differences) ASC;


--Q10. The country with the highest and lowest points?
--THE COUNTRY WITH THE HIGHEST POINTS IS BRAZIL
WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT
			team,
			MAX(points) AS HighestPoints
		FROM
			all_world_cup
		GROUP BY
			team
		ORDER BY
			MAX(points) DESC;
--THE COUNTRY WITH THE LOWEST POINTS IS SERBIA & MONTENEGRO
WITH
	all_world_cup AS (
		SELECT 
			'wc 2002' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2002
		UNION ALL
		SELECT 
			'wc 2006' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2006
		UNION ALL
		SELECT 
			'wc 2010' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2010
		UNION ALL
		SELECT 
			'wc 2014' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2014
		UNION ALL
		SELECT 
			'wc 2018' AS worldcupyear,
			team,
			points,
			game_played,
			win,
			loss,
			goals_for,
			goals_against
		FROM 
			fifa_2018
		)
	
		SELECT
			team,
			MIN(points) AS LowestPoints
		FROM
			all_world_cup
		GROUP BY
			team
		ORDER BY
			MIN(points) ASC;

		
		
