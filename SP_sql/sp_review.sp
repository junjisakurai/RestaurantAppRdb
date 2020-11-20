DROP PROCEDURE sp_review;
DELIMITER //
CREATE PROCEDURE sp_review( IN proc INT, IN menu_id VARCHAR(10))
BEGIN
IF proc = 1 THEN
  SELECT
  	review.menu_id,
  	review.user_id,
  	user_m.user_name,
  	user_m.sex,
  	CASE
  	 WHEN user_m.sex = '1' THEN 'male'
  	 WHEN user_m.sex = '2' THEN 'female'
      END as hot_ice_m,
  	user_m.age,
  	review.review,
  	review.evaluation
  FROM review
  LEFT JOIN user_m
  ON review.user_id = user_m.user_id
  AND review.menu_id = menu_id
  WHERE
  review.menu_id = menu_id;
ELSEIF proc = 2 THEN
  SELECT "input is 2";
ELSE
  SELECT "input is else";
END IF;
END
//
DELIMITER ;