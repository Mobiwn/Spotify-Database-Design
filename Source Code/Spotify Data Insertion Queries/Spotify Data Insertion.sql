INSERT INTO Users (Name, Email, Password, Date_of_Birth, Profile_Image)
VALUES
  ('John Doe', 'johndoe@example.com', 'password123', '1990-05-15', NULL),
  ('Jane Smith', 'janesmith@example.com', 'pass456', '1988-09-27', NULL),
  ('Mike Johnson', 'mikejohnson@example.com', 'mysecretpass', '1995-03-10', NULL);

INSERT INTO Artists (Name, Genre, Image)
VALUES
  ('Taylor Swift', 'Pop', NULL),
  ('Ed Sheeran', 'Pop', NULL),
  ('Adele', 'Pop', NULL);

INSERT INTO Albums (Artist_ID, Name, Release_Date, Image)
VALUES
  (1, '1989', '2014-10-27', NULL),
  (2, '÷ (Divide)', '2017-03-03', NULL),
  (3, '21', '2011-01-19', NULL);

INSERT INTO Tracks (Album_ID, Name, Duration, Path)
VALUES
  (1, 'Shake It Off', 233, '/tracks/1234'),
  (1, 'Blank Space', 231, '/tracks/5678'),
  (2, 'Shape of You', 233, '/tracks/91011');

INSERT INTO Playlists (User_ID, Name, Image)
VALUES
  (1, 'Favorites', NULL),
  (2, 'Party Mix', NULL),
  (3, 'Road Trip', NULL);

INSERT INTO Playlist_Tracks (Playlist_ID, Track_ID, "Order")
VALUES
  (1, 1, 1),
  (1, 2, 2),
  (2, 2, 1),
  (2, 3, 2),
  (3, 1, 1),
  (3, 3, 2);

INSERT INTO Followers (User_ID, Artist_ID)
VALUES
  (1, 1),
  (2, 1),
  (3, 2);

INSERT INTO Likes (User_ID, Track_ID, Like_Date_Time)
VALUES
  (1, 1, '2022-01-15 10:30:00'),
  (1, 2, '2022-01-20 14:45:00'),
  (2, 1, '2022-02-05 09:15:00'),
  (3, 2, '2022-02-10 16:20:00');

