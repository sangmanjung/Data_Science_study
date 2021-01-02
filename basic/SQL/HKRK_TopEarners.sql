SELECT salary*months as earnings,count(*) FROM employee -- make a group "earnings"
GROUP BY 1 -- first column of group "earnings"
ORDER BY 1 DESC -- from the maximum value of "earnings" to the minimum value of that.
LIMIT 1; -- pick the maximum
