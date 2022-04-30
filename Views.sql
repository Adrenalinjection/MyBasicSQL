CREATE VIEW vw_goods AS 
SELECT id_goods, goods 
FROM goods
ORDER BY id_goods

CREATE VIEW vw_goods_categories AS 
SELECT id_categories, categories_name 
FROM goods_categories
ORDER BY id_categories

CREATE VIEW vw_goods_and_categories AS 
SELECT g.id_goods, g.goods, c.id_categories, c.categories_name
FROM goods AS g
  INNER JOIN goods_categories AS c
    ON g.id_categories = c.id_categories
ORDER BY id_categories ;