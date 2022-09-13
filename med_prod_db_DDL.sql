

DROP DATABASE IF EXISTS med_product_db;
CREATE DATABASE med_product_db;
use med_product_db;

/*
Table of makers
*/

DROP TABLE IF EXISTS maker;
CREATE TABLE maker (
    id SERIAL PRIMARY KEY, 
    created_at DATETIME DEFAULT NOW(),
    maker_name VARCHAR (50)
    );

DROP TABLE IF EXISTS introducer;

CREATE TABLE introducer (
    id SERIAL PRIMARY KEY, 
    created_at DATETIME DEFAULT NOW(),
    comment TEXT,
    
    maker_id BIGINT UNSIGNED NOT NULL,
    introducer_type VARCHAR (50),
    introducer_articul VARCHAR (50),
    introducer_length INT UNSIGNED NOT NULL,
    introducer_size INT UNSIGNED NOT NULL,
    gemostatic_valve VARCHAR(50),
    color_marker_of_size VARCHAR(50),
    side_valve VARCHAR(50),
    three_way_tap VARCHAR(50),
    fabric_iteam VARCHAR(50),
    introdusert_stat VARCHAR(50),
    dilatation VARCHAR(50),
    obturation VARCHAR(50),
    micro_wire_length VARCHAR(50),
    mirco_wire_diameter VARCHAR(50),
    mirco_wire_tip_shape VARCHAR (50),
    spine_diametr VARCHAR (50),
    spine_length VARCHAR (50),
    surrenge_volume VARCHAR (50),
    dievice_for_wire_input VARCHAR(50),
    input_place VARCHAR (25),
    link_text VARCHAR (500),
    image MEDIUMBLOB,
   
    
    FOREIGN KEY (maker_id) REFERENCES maker(id)
);



DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `maker_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
    
) ;

--
-- Dumping data for table `product`
--

    

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
table of type of products
*/

DROP VIEW IF EXISTS product_list;
CREATE VIEW product_list AS
    SELECT maker_name FROM maker
        JOIN introducer ON maker_id = maker.id;
        




DROP TABLE IF EXISTS ballons;
CREATE TABLE ballons (
    id SERIAL PRIMARY KEY, 
    created_at DATETIME DEFAULT NOW(),
    maker_id BIGINT UNSIGNED NOT NULL,
    comment TEXT,
    image MEDIUMBLOB,
    articul VARCHAR (50),
    ballon_length INT UNSIGNED NOT NULL,
    ballon_size INT UNSIGNED NOT NULL,
    nominal_pressure INT,
    rapture_pressure INT,
    rapture_pressure_size INT,
    guidewire VARCHAR(50),
    markers_num INT,
    length_of_tip INT,
    obturation BIT(1),
    efective_length INT,
    recomendet_duser INT,
    distal_shapht INT,
    proximal_shapht INT,
    cross_profile VARCHAR(50),
    speaks_num INT,
    speak_height INT,
    distance_of_speaks FLOAT (4,3),
    coating VARCHAR (50),
    enter VARCHAR (50),
    guidewire_type varchar (50),
    ballon_material varchar(50),
    link_text varchar (200),
    FOREIGN KEY (maker_id) REFERENCES maker(id)
);



