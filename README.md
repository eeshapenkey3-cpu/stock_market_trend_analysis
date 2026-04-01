# S&P 500 Financial Trend Analysis
### **SQL | Data Engineering | Financial Analytics** *Analyzing 500+ tickers to evaluate Sector ROI and Market Volatility.* 

### Executive Summary
This project uses MySQL to process S&P 500 stock data, identifying market leaders and risk factors. By joining price action with sector metadata, I transformed raw CSV data into actionable financial insights.  

### Technical Stack
* **Engine**: MySQL 8.0
* **Key Skills**: Relational Joins, Data Normalization, Aggregate Functions.
* **Problem Solved**: Standardized inconsistent ticker symbols across datasets using ALTER TABLE and JOIN logic to ensure 100% data integrity.
* **Custom Metrics**: Developed SQL queries to calculate Standard Deviation (Volatility) and Percentage ROI.

### market insights

### Sector Composition
To verify data distribution, I mapped the dataset by sector volume:
![S&P 500 Sector Treemap](./sp500_sector_treemap.png)
![S&P 500 data analysis](./sp500_dashboard_analysis.png)
![S&P 500 data audit](./data_audit_null_check.png)
* **Top Sectors**: Tech and Financials dominate the current database schema.
* **Validation**: Treemap confirms zero null values in sector categorization.

### key insights
* **top performer**: The Communication Services sector showed the highest stability with an average ROI of 0.02.
* **highest risk**: The Technology sector faced the most significant headwinds during this period, with an average ROI of -0.08.
* **volatility analysis**: Calculated both Dollar-based and Percentage-based volatility to compare high-priced stocks (like Amazon) fairly against the broader market.

### financial glossary
* **ROI**: % gain/loss vs. initial cost.
* **Volatility**: Statistical risk (Standard Deviation) of price swings.
* **Headwinds**: Market conditions slowing growth.
* **Close Price**: Standard benchmark for daily performance.
