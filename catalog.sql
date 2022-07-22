DROP DATABASE IF EXISTS catalogTZ;
CREATE DATABASE catalogTZ;
USE catalogTZ;


DROP TABLE IF EXISTS women ;
CREATE TABLE women (
	id SERIAL PRIMARY KEY
);


DROP TABLE IF EXISTS men ;
CREATE TABLE men (
	id SERIAL PRIMARY KEY

);


DROP TABLE IF EXISTS w_shoes ;
CREATE TABLE w_shoes (
	id SERIAL, 
    name VARCHAR(64) COMMENT 'Название подкатегории',
    parent_id BIGINT UNSIGNED NOT NULL COMMENT 'id родительской Категории',
    
    FOREIGN KEY (parent_id) REFERENCES women(id) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY (id)
);


DROP TABLE IF EXISTS w_bags ;
CREATE TABLE w_bags (
	id SERIAL, 
    name VARCHAR(64) COMMENT 'Название подкатегории',
    parent_id BIGINT UNSIGNED NOT NULL COMMENT 'id родительской Категории',
    
    FOREIGN KEY (parent_id) REFERENCES women(id) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY (id)
);


DROP TABLE IF EXISTS m_shoes ;
CREATE TABLE m_shoes (
	id SERIAL, 
    name VARCHAR(64) COMMENT 'Название подкатегории',
    parent_id BIGINT UNSIGNED NOT NULL COMMENT 'id родительской Категории',
    
    FOREIGN KEY (parent_id) REFERENCES men(id) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY (id)
);


DROP TABLE IF EXISTS m_bags ;
CREATE TABLE m_bags (
	id SERIAL, 
    name VARCHAR(64) COMMENT 'Название подкатегории',
    parent_id BIGINT UNSIGNED NOT NULL COMMENT 'id родительской Категории',
    
    FOREIGN KEY (parent_id) REFERENCES men(id) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY (id)
);


DROP TABLE IF EXISTS offers ;
CREATE TABLE offers (
	offer_id SERIAL, 
    name VARCHAR(64) COMMENT 'Название товара',
    price FLOAT COMMENT 'Цена',
    price_begin FLOAT COMMENT 'Цена без скидки',
    percent DECIMAL COMMENT 'Скидка %',
    category_id BIGINT UNSIGNED NOT NULL COMMENT 'id Категории',
    vat FLOAT COMMENT 'НДС',
    model VARCHAR(128) COMMENT 'Модель',
    vendorcode BIGINT,
    description VARCHAR(256) COMMENT 'Описание',
    barcode BIGINT,
    param0_name     VARCHAR(5) NOT NULL,
  param0_text     VARCHAR(6) NOT NULL,
  param1_name     VARCHAR(7) NOT NULL,
  param1_text     VARCHAR(26) NOT NULL,
  param2_name     VARCHAR(9) NOT NULL,
  param2_text     INTEGER ,
  param3_name     VARCHAR(20) NOT NULL,
  param3_text     INTEGER ,
  param4_name     VARCHAR(4) NOT NULL,
  param4_text     VARCHAR(8) NOT NULL,
  param5_name     VARCHAR(18) NOT NULL,
  param5_text     VARCHAR(8) NOT NULL,
  param6_name     VARCHAR(14) NOT NULL,
  param6_text     VARCHAR(25) NOT NULL,
  param7_name     VARCHAR(17) NOT NULL,
  param7_text     VARCHAR(18) NOT NULL,
  param8_name     VARCHAR(16) NOT NULL,
  param8_text     VARCHAR(6),
  param9_name     VARCHAR(14) NOT NULL,
  param10_name    VARCHAR(14) NOT NULL,
  param11_name    VARCHAR(3) NOT NULL,
  param11_text    VARCHAR(7) NOT NULL,
  param12_name    VARCHAR(3) NOT NULL,
  param12_text    VARCHAR(11) NOT NULL,
  param13_name    VARCHAR(5) NOT NULL,
  param13_text    VARCHAR(11) NOT NULL,
  param14_name    VARCHAR(13) NOT NULL,
  param14_text    VARCHAR(8) NOT NULL,
  param15_name    VARCHAR(5) NOT NULL,
  param15_text    VARCHAR(6) NOT NULL,
  param16_name    VARCHAR(14) NOT NULL,
  param16_text    VARCHAR(7) NOT NULL,
  param17_name    VARCHAR(20) NOT NULL,
  param17_text    VARCHAR(10) NOT NULL,
  param18_name    VARCHAR(3) NOT NULL,
  param18_text    INTEGER  NOT NULL,
  param19_name    VARCHAR(5) NOT NULL,
  param19_text    INTEGER  NOT NULL,
  param20_name    VARCHAR(6) NOT NULL,
  param20_text    INTEGER  NOT NULL,
  param21_name    VARCHAR(6) NOT NULL,
  param21_text    INTEGER  NOT NULL,
  param22_name    VARCHAR(16) NOT NULL,
  param22_text    VARCHAR(18),
  param9_text     VARCHAR(22),
    
    FOREIGN KEY (category_id) REFERENCES w_shoes(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES w_bags(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES m_shoes(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES m_bags(id) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY (offer_id)   
);













