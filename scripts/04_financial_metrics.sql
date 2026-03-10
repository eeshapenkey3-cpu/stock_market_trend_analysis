/* PROJECT: S&P 500 Trend Analysis
METRIC DEFINITIONS:
- ROI: ((Close - Open) / Open) * 100
- Volatility: STDDEV of Close Price (Risk Assessment)
- Price Points: Open, Close, High, Low (Daily market movement)
*/
USE sp500_analysis;

-- 1. ROI Analysis (Row-level math)
/* SELECT ticker, ROUND((((close_price - open_price) / open_price) * 100.0),2) 
AS ROI_percent
FROM prices; */

-- 2. Volatility Analysis (Aggregated math)
-- This includes both the Dollar swing and the Percentage swing (CV)
/*SELECT 
    ticker, 
    -- Dollar Volatility 
    ROUND(STDDEV(close_price), 2) AS volatility_usd,
    -- Percent Volatility 
    ROUND((STDDEV(close_price) / AVG(close_price)) * 100, 2) AS volatility_percent
FROM prices 
GROUP BY ticker
ORDER BY volatility_usd DESC, volatility_percent DESC; */

-- 3.sector analysis
SELECT c.sector,
COUNT(p.ticker) AS num_stocks,
ROUND(AVG(((p.open_price - p.close_price)/p.open_price) * 100.0),2) AS avg_ROI
FROM prices AS p
JOIN company_info AS c 
ON p.ticker = c.ticker
GROUP BY c.sector
ORDER BY avg_ROI DESC;