-- Insert dummy Users
INSERT INTO Users (Username, Email) VALUES 
('DJNeon', 'djneon@musicworld.com'),
('LoFiMaster', 'lofibeats@vibescape.com'),
('RockRider', 'rockrider@loudtunes.com'),
('IndieSoul', 'indiesoul@calmmelodies.com'),
('SynthWaveKing', 'synthwaveking@retrobeats.com'),
('RapperX', 'rapperx@lyricalflow.com'),
('MelodyMaven', 'melodymaven@softtunes.com'),
('PartyStarter', 'partystarter@clubvibes.com'),
('ChillChords', 'chillchords@relaxzone.com'),
('DrummerAce', 'drummerace@thunderrhythms.com');

-- Insert dummy Songs
INSERT INTO Song (Name, Length, Likes, Plays, UploadDate, UserID) VALUES 
('Sunset Drive', 210, 120, 1500, '2024-01-15', 1),
('Moonlit Lounge', 190, 250, 2300, '2024-02-20', 2),
('Thunderstorm Riffs', 250, 80, 900, '2024-03-01', 3),
('Golden Memories', 180, 60, 500, '2024-03-14', 4),
('Synthwave Odyssey', 300, 350, 4200, '2024-04-22', 5),
('Urban Flow', 200, 500, 5200, '2024-05-05', 6),
('Ocean Breeze', 220, 90, 800, '2024-05-15', 7),
('Party Anthem', 240, 300, 3200, '2024-06-10', 8),
('Chill Sunrise', 260, 110, 600, '2024-06-18', 9);

-- Insert dummy Albums
INSERT INTO Album (Title, Artist, ReleaseDate, Genre, UserID) VALUES 
('Vibe Sessions', 'DJNeon', '2023-08-01', 'Electronic', 1),
('Lo-Fi Waves', 'LoFiMaster', '2024-02-12', 'Lo-Fi', 2),
('Rock the World', 'RockRider', '2023-11-20', 'Rock', 3),
('Indie Chill', 'IndieSoul', '2023-05-15', 'Indie', 4),
('Synthwave Journey', 'SynthWaveKing', '2024-03-30', 'Synthwave', 5);

-- Insert Album-Song relationships
INSERT INTO Album_Song (AlbumID, SongID) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(5, 6);

-- Insert dummy Playlists
INSERT INTO Playlist (Title, CreationDate, UserID) VALUES 
('Road Trip Essentials', '2024-07-01', 1),
('Night Time Chill', '2024-07-02', 2),
('Rock Legends', '2024-07-05', 3),
('Party Mix', '2024-07-10', 8),
('Calm Beats', '2024-07-15', 9);

-- Insert Playlist-Song relationships
INSERT INTO Playlist_Song (PlaylistID, SongID) VALUES 
(1, 1),
(1, 4),
(2, 2),
(3, 3),
(4, 8),
(5, 9);

-- Insert Following relationships
INSERT INTO Following (FollowerID, FollowingID, FollowDate) VALUES 
(1, 2, '2024-01-10'),
(1, 3, '2024-02-14'),
(2, 5, '2024-03-01'),
(3, 4, '2024-04-05'),
(6, 1, '2024-05-06'),
(8, 6, '2024-06-12'),
(9, 2, '2024-07-20'),
(10, 8, '2024-08-01');

-- Insert User_Likes_Song relationships
INSERT INTO User_Likes_Song (UserID, SongID) VALUES 
(1, 2),
(2, 5),
(3, 3),
(4, 4),
(5, 6),
(6, 1),
(8, 8),
(9, 2),
(10, 9);

-- Insert Comments for songs
INSERT INTO Comments (SongID, UserID, CommentText) VALUES 
(1, 2, 'This song is so refreshing, perfect for evening drives!'),
(1, 3, 'Love the synth in this track, great job DJNeon!'),
(2, 1, 'Such a relaxing vibe, great work LoFiMaster!'),
(2, 5, 'Takes me to another world, amazing production.'),
(3, 6, 'Epic guitar riffs! Really enjoyed this.'),
(4, 4, 'Brings back so many memories, truly golden!'),
(5, 8, 'Synthwave at its best, brings out the retro feel.'),
(6, 7, 'Urban Flow is fire!'),
(1, 9, 'Smooth transitions and solid buildup, great production!');

-- Insert additional comments to one song to show multiple comments
INSERT INTO Comments (SongID, UserID, CommentText) VALUES 
(1, 4, 'A perfect mix of beats and melody, very catchy.'),
(1, 6, 'Could listen to this on repeat all day!'),
(1, 7, 'Really love how this track evolves.');


-- More Dummy Users
INSERT INTO Users (Username, Email) VALUES 
('BassBooster', 'bassbooster@dropbeats.com'),
('EpicStrummer', 'epicstrummer@metalmania.com'),
('JazzExplorer', 'jazzexplorer@smoothjazz.com'),
('ClassicalConductor', 'classicalconductor@symphonyhub.com'),
('AcousticVibes', 'acousticvibes@calmtunes.com');

-- More Dummy Songs
INSERT INTO Song (Name, Length, Likes, Plays, UploadDate, UserID) VALUES 
('Metal Symphony', 310, 200, 2500, '2024-07-25', 11),
('Jazz Funk Jam', 280, 150, 1200, '2024-08-01', 12),
('Classical Strings', 270, 300, 3200, '2024-08-15', 13),
('Acoustic Bliss', 240, 220, 1800, '2024-08-20', 14),
('Bass Drop', 260, 500, 4000, '2024-09-05', 15);

INSERT INTO Song (Name, Length, Likes, Plays, UploadDate, UserID) VALUES 
('Milioni Kamioni', 320, 200, 9999, '2024-11-11', 1)

-- More Dummy Albums
INSERT INTO Album (Title, Artist, ReleaseDate, Genre, UserID) VALUES 
('Metal Mayhem', 'EpicStrummer', '2023-12-01', 'Metal', 11),
('Jazz Odyssey', 'JazzExplorer', '2024-01-25', 'Jazz', 12),
('Classical Fusion', 'ClassicalConductor', '2024-02-14', 'Classical', 13),
('Acoustic Sessions', 'AcousticVibes', '2024-03-10', 'Acoustic', 14);

-- More Album-Song relationships
INSERT INTO Album_Song (AlbumID, SongID) VALUES 
(6, 10),
(7, 11),
(8, 12),
(9, 13);

-- More Dummy Playlists
INSERT INTO Playlist (Title, CreationDate, UserID) VALUES 
('Workout Beats', '2024-09-10', 1),
('Study Chill', '2024-09-15', 2),
('Heavy Metal Hits', '2024-09-20', 3),
('Relaxing Tunes', '2024-09-25', 4),
('Retro Vibes', '2024-10-01', 5);

-- More Playlist-Song relationships
INSERT INTO Playlist_Song (PlaylistID, SongID) VALUES 
(6, 10),
(6, 11),
(7, 12),
(8, 13),
(9, 14);


INSERT INTO Users (Username, Email) VALUES 
('BassDropper', 'bassdropper@beats.com'),
('MelodyQueen', 'melodyqueen@harmony.com'),
('HarmonicSoul', 'harmonicsoul@tunes.com'),
('ClubKing', 'clubking@dancefloor.com'),
('PianoVirtuoso', 'pianovirtuoso@classics.com'),
('VinylVibes', 'vinylvibes@records.com'),
('JazzMaster', 'jazzmaster@saxandkeys.com'),
('EDMChampion', 'edmchampion@festival.com'),
('RiffRanger', 'riffranger@hardstrings.com'),
('DreamyTunes', 'dreamytunes@calmtunes.com'),
('SoulSinger', 'soulsinger@vocals.com'),
('TechnoTactician', 'technotactician@beats.com'),
('HipHopHero', 'hiphophero@rhymes.com'),
('OrchestraAce', 'orchestraace@symphony.com'),
('AcousticBliss', 'acousticbliss@guitar.com'),
('DrumGuru', 'drumguru@percussion.com'),
('TranceLegend', 'trancelegend@raves.com'),
('SoundArchitect', 'soundarchitect@ambient.com'),
('FolkHeart', 'folkheart@tradition.com'),
('RhymeWizard', 'rhymewizard@lyrics.com');


INSERT INTO Song (Name, Length, Likes, Plays, UploadDate, UserID) VALUES 
('Deep Bass', 240, 300, 4000, '2024-01-22', 11),
('Harmonic Bliss', 200, 250, 3000, '2024-02-10', 12),
('Night Rumble', 280, 150, 2000, '2024-03-15', 13),
('Piano Escape', 220, 180, 2200, '2024-04-01', 14),
('Vinyl Throwback', 260, 210, 3300, '2024-05-06', 15),
('Saxophone Dreams', 240, 270, 3100, '2024-06-11', 16),
('EDM Bliss', 230, 400, 5000, '2024-07-16', 17),
('Metal Riffs', 260, 120, 1700, '2024-08-21', 18),
('Peaceful Sleep', 180, 90, 800, '2024-09-01', 19),
('Soul Serenade', 270, 130, 1200, '2024-10-05', 20),
('Techno Vibes', 210, 360, 4500, '2024-11-15', 11),
('HipHop Jam', 200, 290, 3400, '2024-12-03', 12),
('Strings Symphony', 320, 80, 900, '2025-01-12', 13),
('Acoustic Magic', 240, 70, 800, '2025-02-20', 14),
('Percussion Beats', 220, 190, 2100, '2025-03-15', 15),
('Trance Energy', 300, 500, 6000, '2025-04-02', 16),
('Ambient Whisper', 280, 90, 1000, '2025-05-10', 17),
('Traditional Tunes', 250, 120, 1500, '2025-06-25', 18),
('Rhyme Flow', 210, 450, 5200, '2025-07-30', 19),
('Synth Escape', 270, 390, 4800, '2025-08-14', 20);


INSERT INTO Album (Title, Artist, ReleaseDate, Genre, UserID) VALUES 
('Bass Odyssey', 'BassDropper', '2024-05-12', 'Electronic', 11),
('Melody Chronicles', 'MelodyQueen', '2024-06-20', 'Pop', 12),
('Jazz Journey', 'JazzMaster', '2024-07-15', 'Jazz', 16),
('Riff Rebellion', 'RiffRanger', '2024-08-22', 'Rock', 18),
('Folk Tales', 'FolkHeart', '2024-09-30', 'Folk', 19),
('HipHop Tales', 'HipHopHero', '2024-10-10', 'Hip-Hop', 13),
('Dreamscapes', 'DreamyTunes', '2024-11-18', 'Ambient', 19),
('Symphony Bliss', 'OrchestraAce', '2024-12-25', 'Classical', 14),
('Acoustic Paradise', 'AcousticBliss', '2025-01-05', 'Acoustic', 15),
('Trance World', 'TranceLegend', '2025-02-14', 'Trance', 16);

INSERT INTO Playlist_Song (PlaylistID, SongID) VALUES 
(1, 10),
(1, 11),
(2, 12),
(2, 13),
(3, 14),
(3, 15),
(4, 16),
(4, 17),
(5, 18),
(5, 19),
(1, 20),
(2, 21),
(3, 22),
(4, 23),
(5, 24),
(1, 25),
(2, 26),
(3, 27),
(4, 28),
(5, 29);

INSERT INTO Comments (SongID, UserID, CommentText) VALUES 
(1, 11, 'The bass in this track is unreal!'),
(2, 12, 'Absolutely love the harmonies here.'),
(3, 13, 'Perfect track for late-night listening.'),
(4, 14, 'The piano melody is so soothing.'),
(5, 15, 'Vinyl never sounded better.'),
(6, 16, 'Smooth saxophone tones, truly relaxing.'),
(7, 17, 'This track will light up any festival stage.'),
(8, 18, 'Hard-hitting riffs, rock on!'),
(9, 19, 'So calming, great for meditation.'),
(10, 20, 'The vocals are simply mesmerizing.'),
(1, 12, 'Perfect for workouts, keeps me pumped!'),
(2, 14, 'Really captures a dreamy vibe.'),
(3, 15, 'This song is full of life and energy.'),
(4, 17, 'So unique and refreshing.'),
(5, 19, 'A true masterpiece.'),
(6, 20, 'Lyrically stunning, love it.'),
(7, 11, 'Retro feels done right.'),
(8, 13, 'Every second is a joy to listen to.'),
(9, 16, 'Sets the mood perfectly.'),
(10, 18, 'The build-up is phenomenal.');


-- 1. Test: Verify user data
SELECT * FROM Users;
-- Ensure 10 users with realistic names and unique emails are present.

-- 2. Test: Verify song data and its link to users
SELECT * FROM Song;
-- Ensure each song has correct attributes, including foreign key to Users.

-- 3. Test: Verify albums and their relationship to users
SELECT a.AlbumID, a.Title, a.Artist, u.Username
FROM Album a
JOIN Users u ON a.UserID = u.UserID;
-- Confirm that albums are linked to the right user by checking artist names.

-- 4. Test: Verify the Album-Song relationships
SELECT a.Title AS AlbumTitle, s.Name AS SongName
FROM Album a
JOIN Album_Song asg ON a.AlbumID = asg.AlbumID
JOIN Song s ON asg.SongID = s.SongID;
-- Check if albums contain the correct songs.

-- 5. Test: Verify playlists and their songs
SELECT p.Title AS PlaylistTitle, s.Name AS SongName
FROM Playlist p
JOIN Playlist_Song ps ON p.PlaylistID = ps.PlaylistID
JOIN Song s ON ps.SongID = s.SongID;
-- Ensure playlists contain expected songs.

-- 6. Test: Verify user following relationships
SELECT f.FollowerID, f.FollowingID, u1.Username AS FollowerName, u2.Username AS FollowingName, f.FollowDate
FROM Following f
JOIN Users u1 ON f.FollowerID = u1.UserID
JOIN Users u2 ON f.FollowingID = u2.UserID;
-- Confirm that follow relationships are established correctly.

-- 7. Test: Verify user likes on songs
SELECT u.Username, s.Name AS LikedSong
FROM User_Likes_Song uls
JOIN Users u ON uls.UserID = u.UserID
JOIN Song s ON uls.SongID = s.SongID;
-- Check which users liked which songs.

-- 8. Test: Verify comments on songs
SELECT c.CommentID, u.Username, s.Name AS SongName, c.CommentText, c.CommentDate
FROM Comments c
JOIN Users u ON c.UserID = u.UserID
JOIN Song s ON c.SongID = s.SongID;
-- Confirm that songs have the correct number of comments and content matches expectations.

-- 9. Test: Check if any users have uploaded no songs
SELECT u.Username 
FROM Users u
LEFT JOIN Song s ON u.UserID = s.UserID
WHERE s.SongID IS NULL;
-- Identify users without uploaded songs.

-- 10. Test: Check for songs with multiple comments
SELECT s.Name AS SongName, COUNT(c.CommentID) AS CommentCount
FROM Comments c
JOIN Song s ON c.SongID = s.SongID
GROUP BY s.Name
HAVING COUNT(c.CommentID) > 1;
-- Ensure that songs with multiple comments are identified.

-- 11. Test: Validate foreign key constraints
SELECT *
FROM Song s
WHERE s.UserID NOT IN (SELECT UserID FROM Users);
-- Check for foreign key violations in the Song table.

-- 12. Test: Ensure the primary key constraints work
BEGIN TRY
    INSERT INTO User_Likes_Song (UserID, SongID) VALUES (1, 2);  -- Duplicate test
END TRY
BEGIN CATCH
    SELECT ERROR_MESSAGE() AS ErrorMessage;
END CATCH;

-- 13. Test: Ensure album-user relationship is correct
SELECT a.Title, u.Username AS Owner
FROM Album a
JOIN Users u ON a.UserID = u.UserID;
-- Confirm the user who owns each album is correctly linked.
