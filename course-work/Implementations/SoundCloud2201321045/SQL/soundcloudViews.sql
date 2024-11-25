-- View: Всички playlist-и и песните в тях
CREATE VIEW vw_PlaylistSongs AS
SELECT 
    P.Title AS PlaylistTitle,
    S.Name AS SongName,
    U.Username AS CreatedBy
FROM Playlist P
JOIN Playlist_Song PS ON P.PlaylistID = PS.PlaylistID
JOIN Song S ON PS.SongID = S.SongID
JOIN Users U ON P.UserID = U.UserID;



-- View: Най-харесаните песни с информация за потребителя
CREATE VIEW vw_MostLikedSongs AS
SELECT 
    S.Name AS SongName,
    S.Likes,
    S.Plays,
    U.Username AS UploadedBy,
    A.Title AS AlbumName
FROM Song S
LEFT JOIN Album_Song ASG ON S.SongID = ASG.SongID
LEFT JOIN Album A ON ASG.AlbumID = A.AlbumID
JOIN Users U ON S.UserID = U.UserID
WHERE S.Likes > 100;


SELECT * FROM vw_PlaylistSongs

SELECT * FROM vw_MostLikedSongs