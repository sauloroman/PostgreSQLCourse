--* 1. FROM -> Specifies starting set of rows to work with
--* 2. JOIN -> Merge in data from additional tables
--* 3. WHERE -> Filters the set of rows
--* 4. GROUP BY -> Groups rows by a unique set of values
--*! 5. HAVING -> Filters the set of groups

--* FIND THE NUMBER OF COMMENTS FOR EACH PHOTO WHERE
--* THE photo_id IS LESS THAN 3 AND THE PHOTO HAS MORE THAN 2 COMMENTS

SELECT photo_id, COUNT(*) AS num_comments
FROM comments
WHERE photo_id < 3 --* FILTER ROWS
GROUP BY photo_id
HAVING COUNT(*) > 2; --* FILTER GROUPS (AGGREGATION FUNCTION)

--* FIND TTHE USERS (user_id) WHERE THE USER HAS COMMENTED ON THE FIRST 50 PHOTOS
--* AND THE USER ADDED MORE THAN 20 COMMENTS ON THOSE PHOTOS

SELECT user_id, COUNT(*)
FROM comments
WHERE photo_id <= 50
GROUP BY user_id
HAVING COUNT(*) > 20