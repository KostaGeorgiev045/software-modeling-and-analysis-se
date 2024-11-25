-- Create the database
CREATE DATABASE SoundCloud;

USE SoundCloud;

-- Table: User
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL
);

-- Table: Song
CREATE TABLE Song (
    SongID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Length INT NOT NULL,
    Likes INT DEFAULT 0,
    Plays INT DEFAULT 0,
    UploadDate DATE NOT NULL,
    UserID INT FOREIGN KEY REFERENCES Users(UserID)
);

-- Table: Album
CREATE TABLE Album (
    AlbumID INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(100) NOT NULL,
    Artist NVARCHAR(100) NOT NULL,
    ReleaseDate DATE NOT NULL,
    Genre NVARCHAR(50),
	UserID INT FOREIGN KEY REFERENCES Users(UserID)
);


-- Relationship Table: Album-Song
CREATE TABLE Album_Song (
    AlbumID INT FOREIGN KEY REFERENCES Album(AlbumID),
    SongID INT FOREIGN KEY REFERENCES Song(SongID),
    PRIMARY KEY (AlbumID, SongID)
);

-- Table: Playlist
CREATE TABLE Playlist (
    PlaylistID INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(100) NOT NULL,
    CreationDate DATE NOT NULL,
    UserID INT FOREIGN KEY REFERENCES Users(UserID)
);

-- Relationship Table: Playlist-Song
CREATE TABLE Playlist_Song (
    PlaylistID INT FOREIGN KEY REFERENCES Playlist(PlaylistID),
    SongID INT FOREIGN KEY REFERENCES Song(SongID),
    PRIMARY KEY (PlaylistID, SongID)
);

-- Table: Following
CREATE TABLE Following (
    FollowerID INT,
    FollowingID INT,
    PRIMARY KEY (FollowerID, FollowingID),
    FOREIGN KEY (FollowerID) REFERENCES Users(UserID),
    FOREIGN KEY (FollowingID) REFERENCES Users(UserID),
	FollowDate DATE NOT NULL,
);

-- Table: User Likes Song
CREATE TABLE User_Likes_Song (
    UserID INT FOREIGN KEY REFERENCES Users(UserID),
    SongID INT FOREIGN KEY REFERENCES Song(SongID),
    PRIMARY KEY (UserID, SongID)
);

-- Create a Comments table to support multiple comments per song
CREATE TABLE Comments (
    CommentID INT PRIMARY KEY IDENTITY(1,1),
    SongID INT FOREIGN KEY REFERENCES Song(SongID),
    UserID INT FOREIGN KEY REFERENCES Users(UserID),
    CommentText NVARCHAR(MAX) NOT NULL,
    CommentDate DATETIME DEFAULT GETDATE()
);

