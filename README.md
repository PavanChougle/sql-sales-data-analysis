# SQL Sales Data Analysis Project

## 📌 Objective
This project focuses on cleaning and analyzing messy sales data using SQL to generate business insights.

## 📂 Dataset
The dataset contains sales transactions including:
- customer details
- product details
- order information
- payment methods

## ⚠️ Data Issues Identified
- Inconsistent order status (Complete, completed, Complete )
- Inconsistent payment methods (UPI, upi, Card, card)
- Invalid discount values
- Null values in key fields
- Duplicate records
- Incorrect quantity values

## 🛠️ Data Cleaning Steps
- Standardized order status values
- Standardized payment methods
- Removed invalid discounts (>100% or <0%)
- Removed rows with invalid quantity or price
- Removed duplicate records

## 📊 Key Analysis Performed

### 1. Total Revenue
87

### 2. Top 5 Products
27 Inch Monitor
Office Chair
External SSD 1TB
Noise Cancelling Headphones
Mechanical Keyboard

### 3. Top Customers
Aarav Mehta
Meera Iyer
Dev Malhotra
Sneha Joshi
Priya Shah

### 4. Monthly Sales Trend
Null	  33746.25
2025-01	25631.1
2025-02	12919.35
2025-03	61033.2
2025-04	74243.45
2025-05	64116.75
2025-06	10396
2025-07	105588.1
2025-08	19796.4
2025-09	4398
2025-10	38474.4
2025-11	110007.85
2026-01	61742.45
2026-02	23996

### 5. Region-wise Performance
West	308142.6
North	177592.6
South	87288.9
East	73065.2

### 6. Payment Method Distribution
Card	34
UPI	24
COD	16
NetBanking	7
Cash	6

## 💡 Key Insights
- Certain products generate majority of revenue
- Revenue varies significantly by region
- Data cleaning significantly impacts final results

## 🧰 Tools Used
- MySQL Workbench
- SQL (SELECT, GROUP BY, JOIN, CASE, AGGREGATE FUNCTIONS)
