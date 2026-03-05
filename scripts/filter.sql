USE sp500_analysis;

TRUNCATE TABLE prices;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/all_stocks_5yr.csv'
INTO TABLE prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS

(@v_date, @v_open, @v_high, @v_low, @v_close, @v_volume, @v_ticker)

SET 
	date_recorded = @v_date,
    ticker = @v_ticker,
    open_price = NULLIF(@v_open, ''),
    high_price = NULLIF(@v_high, ''),
    low_price = NULLIF(@v_low, ''),
    close_price = NULLIF(@v_close, ''),
    volume = NULLIF(@v_volume, '');
    
SELECT * FROM prices LIMIT 30;