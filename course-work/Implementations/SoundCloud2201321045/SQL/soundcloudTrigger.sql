-- Trigger: Добавя +1 към play-овете на песента, когато се напише коментар
CREATE TRIGGER trg_IncrementPlaysOnComment
ON Comments
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;


    UPDATE Song
    SET Plays = Plays + 1
    FROM Song
    INNER JOIN Inserted
    ON Song.SongID = Inserted.SongID;
END;


SELECT * FROM Comments
SELECT * FROM Song


-- Test add user
INSERT INTO Users (Username, Email) VALUES ('JohnDoe', 'john@example.com');
INSERT INTO Song (Name, Length, UploadDate, UserID) VALUES ('My Song', 300, GETDATE(), 1);

-- Test add comment
INSERT INTO Comments (SongID, UserID, CommentText) VALUES (1, 2, 'UDRI!');

-- Test check plays
SELECT * FROM Song WHERE SongID = 1;

