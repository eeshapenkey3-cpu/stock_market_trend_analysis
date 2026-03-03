-- the schema: create tables 
-- meta table: table in a database that stores data about other data
-- CREATE DATABASE IF NOT EXISTS sp500_analysis;
USE sp500_analysis;
-- main fact table
CREATE TABLE prices (
	date_recorded DATE NOT NULL,
    open_price DECIMAL(10,2), 
    high_price DECIMAL(10,2),
    low_price DECIMAL(10,2),
    close_price DECIMAL(10,2),
    volume BIGINT,
    ticker VARCHAR(10) NOT NULL,
    PRIMARY KEY (date_recorded, ticker)
    );