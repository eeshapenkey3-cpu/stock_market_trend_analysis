# S&P 500 Financial Trend Analysis
### Technical Project Portfolio - Dublin, Ireland  

### Project Overview
This project performs a deep dive into S&P 500 stock data to evaluate performance (ROI) and risk (Volatility). By joining price data with sector metadata, I identified which industries are currently leading the market.  

### Technical Stack
* **Language**: SQL (MySQL)
* **Key Techniques**: Aggregate Functions, Relational Joins, Data Normalization.

### technical challenges & solutions
* **schema alignment**: I used ALTER TABLE to rename symbol to ticker in the company_info table to ensure the JOIN works
* **Function Troubleshooting**: Corrected syntax from STDDV to the built-in MySQL STDDEV function to accurately measure price fluctuations.
* **Operational Logic**: database-level commands (USE), table-level commands (ALTER)

### key insights
* **top performer**: The Communication Services sector showed the highest stability with an average ROI of 0.02.
* **highest risk**: The Technology sector faced the most significant headwinds during this period, with an average ROI of -0.08.
* **volatility analysis**: Calculated both Dollar-based and Percentage-based volatility to compare high-priced stocks (like Amazon) fairly against the broader market.

### financial terminology glossary
* **ROI (Return on Investment)**: The percentage gain or loss generated on an investment comparing to its initial cost.
* **Volatility**: A statistical measure (Standard Deviation). It indicates the "risk" or how much a price swings away from its average.
* **Headwinds**: market conditions that make it harder for a stock or sector to grow 
* **Open Price**: The price at which a stock first trades when the exchange opens for the day.
* **Close Price**: The final price at which a stock trades when the exchange closes; used as the standard benchmark for daily performance.
* **High / Low Price**: The maximum/ minimum prices reached by a stock during a specific trading period.

### Market Sector Analysis  
To understand the composition of the S&P 500 data stored in my MySQL database, I visualized the distribution of stocks across major sectors.  
Key Insights:
* **Dominant Sectors**: The visualization highlights that Technology and Financials represent the largest portions of the dataset.
* **Data Integrity**: This graph confirms that the MySQL import correctly categorized all 500+ tickers without null values in the sector column.
* **Tooling**: Designed in Canva (V1) to map out the schema
![S&P 500 Sector Treemap](./sp500_sector_treemap.png)
