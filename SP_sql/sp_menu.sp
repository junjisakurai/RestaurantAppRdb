DROP PROCEDURE sp_menu;
DELIMITER //
CREATE PROCEDURE sp_menu( IN proc INT, IN menu_id VARCHAR(10))
BEGIN
IF proc = 1 THEN
  SELECT
  	menu_m.menu_id,
  	menu_m.menu_name,
  	menu_m.menu_img_url,
  	menu_m.price,
  	menu_m.menu_kbn,
  	drink.hot_ice,
  	CASE
  	 WHEN drink.hot_ice = '1' THEN 'アイス'
  	 WHEN drink.hot_ice = '2' THEN 'ホット'
      END as hot_ice_m,
  	drink.drink_kbn,
  	drink.alcol,
  	food.spicy,
  	food.food_kbn
  FROM menu_m
  LEFT JOIN drink
  ON menu_m.menu_id = drink.menu_id
  AND menu_m.menu_kbn = '1'
  LEFT JOIN food
  ON menu_m.menu_id = food.menu_id
  AND menu_m.menu_kbn = '2';
ELSEIF proc = 2 THEN
  SELECT
  	menu_m.menu_id,
  	menu_m.menu_name,
  	menu_m.menu_img_url,
  	menu_m.price,
  	menu_m.menu_kbn,
  	drink.hot_ice,
  	CASE
  	 WHEN drink.hot_ice = '1' THEN 'アイス'
  	 WHEN drink.hot_ice = '2' THEN 'ホット'
      END as hot_ice_m,
  	drink.drink_kbn,
  	drink.alcol,
  	food.spicy,
  	food.food_kbn
  FROM menu_m
  LEFT JOIN drink
  ON menu_m.menu_id = drink.menu_id
  AND menu_m.menu_kbn = '1'
  LEFT JOIN food
  ON menu_m.menu_id = food.menu_id
  AND menu_m.menu_kbn = '2'
  WHERE
  menu_m.menu_id = menu_id;
ELSE
  SELECT "input is else";
END IF;
END
//
DELIMITER ;