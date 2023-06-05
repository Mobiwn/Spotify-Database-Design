SELECT t.Track_ID, t.Name AS Track_Name, a.Name AS Artist_Name, l.Like_Date_Time
FROM Likes l
JOIN Tracks t ON l.Track_ID = t.Track_ID
JOIN Artists a ON a.artist_id = a.Artist_ID
WHERE l.User_ID = 1;
