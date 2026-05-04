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
Calculated total revenue after cleaning data.

### 2. Top 5 Products
Identified highest revenue-generating products.

### 3. Top Customers
Identified most valuable customers.

### 4. Monthly Sales Trend
Analyzed revenue growth over time.

### 5. Region-wise Performance
Compared revenue across regions.

### 6. Payment Method Distribution
Analyzed most used payment methods.

## 💡 Key Insights
- Certain products generate majority of revenue
- Revenue varies significantly by region
- Data cleaning significantly impacts final results

## 🧰 Tools Used
- MySQL Workbench
- SQL (SELECT, GROUP BY, JOIN, CASE, AGGREGATE FUNCTIONS)
