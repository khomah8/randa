-- two tables   
SELECT SUM(Players.Balance) FROM Players JOIN UserAgents ON Players.UserAgent = UserAgents.UserAgent WHERE ((Players.PlayerName LIKE ‘QA%’) AND (UserAgents.Browser=’Chrome’)); 
