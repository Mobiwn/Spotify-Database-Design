CREATE TABLE Users (
  User_ID SERIAL PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Email VARCHAR(100) NOT NULL UNIQUE,
  Password VARCHAR(100) NOT NULL,
  Date_of_Birth DATE,
  Profile_Image BYTEA
);

CREATE TABLE Artists (
  Artist_ID SERIAL PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Genre VARCHAR(100),
  Image BYTEA
);

CREATE TABLE Albums (
  Album_ID SERIAL PRIMARY KEY,
  Artist_ID INT REFERENCES Artists(Artist_ID),
  Name VARCHAR(100) NOT NULL,
  Release_Date DATE,
  Image BYTEA
);

CREATE TABLE Tracks (
  Track_ID SERIAL PRIMARY KEY,
  Album_ID INT REFERENCES Albums(Album_ID),
  Name VARCHAR(100) NOT NULL,
  Duration INT NOT NULL,
  Path VARCHAR(255)
);

CREATE TABLE Playlists (
  Playlist_ID SERIAL PRIMARY KEY,
  User_ID INT REFERENCES Users(User_ID),
  Name VARCHAR(100) NOT NULL,
  Image BYTEA
);

CREATE TABLE Playlist_Tracks (
  Playlist_ID INT REFERENCES Playlists(Playlist_ID),
  Track_ID INT REFERENCES Tracks(Track_ID),
  "Order" INT,
  PRIMARY KEY (Playlist_ID, Track_ID)
);


CREATE TABLE Followers (
  User_ID INT REFERENCES Users(User_ID),
  Artist_ID INT REFERENCES Artists(Artist_ID),
  PRIMARY KEY (User_ID, Artist_ID)
);

CREATE TABLE Likes (
  User_ID INT REFERENCES Users(User_ID),
  Track_ID INT REFERENCES Tracks(Track_ID),
  Like_Date_Time TIMESTAMP,
  PRIMARY KEY (User_ID, Track_ID)
);

