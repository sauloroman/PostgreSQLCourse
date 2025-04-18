--* INSERTION

-- ERROR: insert or update on table "photos" violates foreign key constraint "photos_user_id_fkey", BECAUSE USER DOES NOT EXIT
INSERT INTO photos(url, user_id)
VALUES ('http://jp1.js', 99999);

-- IT IS OK DOING THIS
INSERT INTO photos(url, user_id)
VALUES ('http://jp1.js', NULL);

--* DELETION

--** 1 (ON DELETE RESTRICT) (DEFAULT)
DELETE FROM users WHERE id = 1;
-- ERROR: update or delete on table "users" violates foreign key constraint "photos_user_id_fkey" on table "photos"V

--** 2 (ON DELETE CASCADE) (delete the other references too)
--** 3 (ON DELETE SET NULL) (updating references to NULL)
--** 4 (ON DELETE DEFAULT) (set the references to a DEFAULT VALUE, if one is provided)