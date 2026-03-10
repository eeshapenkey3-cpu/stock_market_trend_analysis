USE sp500_analysis;

-- Return on Investment: gains/losses from selling a stock in percentile
SELECT ticker, ROUND((((close_price - open_price) / open_price) * 100.0),2) 
AS ROI_percent
FROM prices;