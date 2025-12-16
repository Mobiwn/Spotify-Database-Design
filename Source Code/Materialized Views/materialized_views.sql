CREATE MATERIALIZED VIEW mv_track_popularity AS
SELECT
    t.Track_ID,
    t.Name AS Track_Name,
    a.Name AS Artist_Name,
    COUNT(l.User_ID) AS Like_Count
FROM Tracks t
JOIN Albums al ON t.Album_ID = al.Album_ID
JOIN Artists a ON al.Artist_ID = a.Artist_ID
LEFT JOIN Likes l ON t.Track_ID = l.Track_ID
GROUP BY
    t.Track_ID,
    t.Name,
    a.Name;

CREATE INDEX idx_mv_track_popularity_like_count
ON mv_track_popularity (Like_Count DESC);
