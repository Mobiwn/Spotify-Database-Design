SELECT t.Track_ID, t.Name AS Track_Name, t.Duration, a.Name AS Artist_Name, al.Name AS Album_Name
FROM Playlist_Tracks pt
JOIN Tracks t ON pt.Track_ID = t.Track_ID
JOIN Albums al ON t.Album_ID = al.Album_ID
JOIN Artists a ON al.Artist_ID = a.Artist_ID
WHERE pt.Playlist_ID = 1;
