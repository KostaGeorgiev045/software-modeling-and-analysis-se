-- Function: Общият брой харесвания и слушания на всяка песен от конкретен User
CREATE FUNCTION dbo.fn_UserStats (@UserID INT)
RETURNS TABLE
AS
RETURN (
    SELECT 
        SUM(Likes) AS TotalLikes,
        SUM(Plays) AS TotalPlays
    FROM Song
    WHERE UserID = @UserID
);

-- Function: Изписва всички коментари за дадена песен
CREATE FUNCTION dbo.fn_GetSongComments (@SongID INT)
RETURNS TABLE
AS
RETURN (
    SELECT 
        CommentText,
        CommentDate,
        (SELECT Username FROM Users WHERE Users.UserID = Comments.UserID) AS CommentedBy
    FROM Comments
    WHERE SongID = @SongID
);


SELECT * FROM dbo.fn_UserStats(1);

SELECT * FROM dbo.fn_GetSongComments(2);