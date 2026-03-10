USE sp500_analysis;

-- 1. ROI Analysis (Row-level math)
/* SELECT ticker, ROUND((((close_price - open_price) / open_price) * 100.0),2) 
AS ROI_percent
FROM prices; */

-- 2. Volatility Analysis (Aggregated math)
-- This includes both the Dollar swing and the Percentage swing (CV)
SELECT 
    ticker, 
    -- Dollar Volatility 
    ROUND(STDDEV(close_price), 2) AS volatility_usd,
    -- Percent Volatility 
    ROUND((STDDEV(close_price) / AVG(close_price)) * 100, 2) AS volatility_percent
FROM prices 
GROUP BY ticker
ORDER BY volatility_usd DESC, volatility_percent DESC;