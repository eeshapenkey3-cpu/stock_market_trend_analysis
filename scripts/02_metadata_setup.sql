USE sp500_analysis;
-- reference table
CREATE TABLE IF NOT EXISTS company_info (
	ticker VARCHAR(10) PRIMARY KEY,
    company_name VARCHAR(100),
    sector VARCHAR(50)
);
INSERT INTO company_info (ticker, company_name, sector) VALUES
('AAPL', 'Apple Inc.', 'Technology'),
('AMZN', 'Amazon.com Inc.', 'Consumer Discretionary'),
('GOOGL', 'Alphabet Inc.', 'Communication Services'),
('MSFT', 'Microsoft Corporation', 'Technology'),
('TSLA', 'Tesla Inc.', 'Consumer Discretionary'),
('JPM', 'JPMorgan Chase & Co.', 'Financials'),
('V', 'Visa Inc.', 'Financials'),
('NVDA', 'NVIDIA Corporation', 'Technology');

/*ALTER TABLE company_info
RENAME COLUMN symbol TO ticker;*/