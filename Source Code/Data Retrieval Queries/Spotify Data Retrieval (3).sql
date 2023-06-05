SELECT u.User_ID, u.Name AS User_Name, a.Name AS Artist_Name
FROM Followers f
JOIN Users u ON f.User_ID = u.User_ID
JOIN Artists a ON f.Artist_ID = a.Artist_ID
WHERE f.Artist_ID = 1;
