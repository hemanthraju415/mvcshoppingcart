-- create table i213_hsn_code(
-- 	hsn_code int PRIMARY KEY,
-- 	gst NUMERIC
-- );

-- create table i213_product_category(
-- 	p_cat_id int PRIMARY KEY,
-- 	category_name varchar(100)
-- );
-- create table i213_customers(
-- 	c_id SERIAL PRIMARY KEY,
-- 	c_name varchar(50),
-- 	c_mobile varchar(13),
-- 	c_location varchar(20),
-- 	c_createddate DATE DEFAULT now(),
-- 	c_username varchar(20) UNIQUE,
-- 	c_password varchar(20) NOT NULL
-- );

-- create table i213_products(
-- 	p_cat_id int,
-- 	p_id int PRIMARY KEY,
-- 	p_name varchar(100),
-- 	price int,
-- 	p_hsn_code int,
-- 	p_image varchar(500),
-- 	CONSTRAINT fk_pcat_id FOREIGN KEY(p_cat_id) REFERENCES i213_product_category(p_cat_id),
-- 	CONSTRAINT fk_hsn_code FOREIGN KEY(p_hsn_code) REFERENCES i213_hsn_code(hsn_code)
-- );

-- create table i213_orders(
-- 	o_id SERIAL PRIMARY KEY,
-- 	o_date Date DEFAULT now()::Date,
-- 	o_total int,
-- 	c_id int,
-- 	CONSTRAINT fk_c_id FOREIGN KEY(c_id) REFERENCES i213_customers(c_id)
-- );

-- create table i213_order_products(
-- 	op_oid int,
-- 	op_pid int,
-- 	op_qty int,
-- 	op_price NUMERIC,
-- 	CONSTRAINT fk_op_oid FOREIGN KEY(op_oid) REFERENCES i213_orders(o_id),
-- 	CONSTRAINT fk_op_pid FOREIGN KEY(op_pid) REFERENCES i213_products(p_id)
-- );
-- INSERT INTO i213_hsn_code(hsn_code, gst)
-- VALUES
--     (123456, 18),
--     (654321, 12),
--     (987654, 15);
-- -- Insert data into i213_product_category table
-- INSERT INTO i213_product_category (p_cat_id, category_name)
-- VALUES
--     (1, 'men''s clothing'),
--     (2, 'jewelery'),
--     (3, 'electronics'),
--     (4, 'women''s clothing');
	
-- -- Insert data into i213_products table
-- INSERT INTO i213_products (p_cat_id,p_id, p_name, price, p_image, p_hsn_code)
-- VALUES
--     (1,1, 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops', 109.95, 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg', 123456),
--     (1,2,'Mens Casual Premium Slim Fit T-Shirts', 22.30, 'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg', 654321),
--     (1,3, 'Mens Cotton Jacket', 55.99, 'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg', 987654),
--     (1,4, 'Mens Casual Slim Fit', 15.99, 'https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg', 123456),
--     (2,5, 'John Hardy Women''s Legends Naga Gold & Silver Dragon Station Chain Bracelet', 695.00, 'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg', 654321),
--     (2,6, 'Solid Gold Petite Micropave', 168.00, 'https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg', 987654),
--     (2,7, 'White Gold Plated Princess', 9.99, 'https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg', 987654),
--     (2,8, 'Pierced Owl Rose Gold Plated Stainless Steel Double', 10.99, 'https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg', 654321),
--     (3,9, 'WD 2TB Elements Portable External Hard Drive - USB 3.0', 64.00, 'https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg', 123456),
--     (3,10,'SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s', 109.00, 'https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg', 654321),
--     (3,11, 'Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5', 109.00, 'https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg', 123456),
--     (3,12, 'WD 4TB Gaming Drive Works with Playstation 4 Portable External Hard Drive', 114.00, 'https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg', 987654),
--     (3,13,'Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin', 599.00, 'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg', 123456),
--     (3,14, 'Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor (LC49HG90DMNXZA) – Super Ultrawide Screen QLED', 999.99, 'https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg', 987654),
--     (4,15, 'BIYLACLESEN Women''s 3-in-1 Snowboard Jacket Winter Coats', 56.99, 'https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg', 123456),
--     (4,16, 'Lock and Love Women''s Removable Hooded Faux Leather Moto Biker Jacket', 29.95, 'https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg', 987654),
--     (4,17, 'Rain Jacket Women Windbreaker Striped Climbing Raincoats', 39.99, 'https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg', 654321),
--     (4,18, 'MBJ Women''s Solid Short Sleeve Boat Neck V', 9.85, 'https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg', 123456),
--     (4,19, 'Opna Women''s Short Sleeve Moisture', 7.95, 'https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg', 987654),
--     (4,20, 'DANVOUY Womens T Shirt Casual Cotton Short', 12.99, 'https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg', 123456);