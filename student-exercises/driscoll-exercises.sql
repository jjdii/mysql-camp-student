USE baseball;

/*
Add another join to the previous statement by joining the team table to the roster table. List the players on the Boston Red Sox roster.
*/

-- SELECT player.ID
-- , player.LastName
-- , team.TeamName
-- FROM player
-- INNER JOIN roster ON player.ID = roster.PlayerID
-- INNER JOIN team ON roster.TeamID = team.ID
-- WHERE team.TeamName = 'Boston Red Sox';

/*
Create a SELECT statement that joins the player table and the batting table. The query should show all the players and any matching players that exist within the batting table. You should see NULL when there are no matches in the batting table.
*/

-- SELECT player.*, batting.*
-- FROM player
-- LEFT JOIN batting ON player.ID = batting.PlayerID;

/*
Create a SELECT statement that joins the roster table and the team table. The query should display all the teams and any matching players within the roster table. You should see NULL when there are no matches in the roster table.
*/

-- SELECT team.*, roster.*
-- FROM team
-- LEFT JOIN roster ON team.ID = roster.TeamID;

/*
Create a query that shows teams that have players on a roster. If a team does not have any players on a roster, then do not display the team.
*/

-- SELECT team.*, roster.*
-- FROM team
-- LEFT JOIN roster ON team.ID = roster.TeamID
-- WHERE roster.PlayerID IS NOT NULL

/*
Create a query that displays teams that do not have players on a roster.
*/

SELECT team.*, roster.*
FROM team
LEFT JOIN roster ON team.ID = roster.TeamID
WHERE roster.PlayerID IS NULL