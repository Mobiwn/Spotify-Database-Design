SELECT t.Track_ID, t.Name AS Track_Name, a.Name AS Artist_Name, l.Like_Date_Time
FROM Likes l
JOIN Tracks t ON l.Track_ID = t.Track_ID
JOIN Albums al ON t.Album_ID = al.Album_ID
JOIN Artists a ON al.Artist_ID = a.Artist_ID
WHERE l.User_ID = 1;
