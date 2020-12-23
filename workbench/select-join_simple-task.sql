-- have two Tables data set 
/* select all Players 
*/


/* Write an SQL query that will show all the PlayerID of all players with more than 50 in there balance :
*/
SELECT PlayerID FROM Players WHERE Balance>50;


-- several conditions select 
/* Write an SQL query that will summarize the balance for all Chrome players whose name start with "QA" :
*/ 
SELECT SUM(Players.Balance) FROM Players 
JOIN UserAgents ON Players.UserAgentID = UserAgents.UserAgentID 
WHERE ((Players.PlayerName LIKE ‘QA%’) AND (UserAgents.Browser=’Chrome’)); 
