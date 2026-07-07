# ☕ Cafe Business Analytics Dashboard

An end-to-end Data Analytics project that analyzes cafe sales data using **MySQL**, **Python**, and **Power BI**. The project transforms raw transactional data into meaningful business insights through SQL analysis, exploratory data analysis (EDA), and an interactive dashboard.

---

# 📌 Project Overview

This project simulates the workflow of a Data Analyst by analyzing cafe sales data from multiple related tables. The objective is to help business owners understand sales performance, customer behavior, product performance, employee productivity, and payment trends to support data-driven decision-making.

The project covers the complete analytics lifecycle:

- Data Cleaning
- SQL Analysis
- Exploratory Data Analysis (EDA)
- Dashboard Development
- Business Insights
- Business Recommendations

---

# 🎯 Business Problem

The cafe owner wants answers to the following questions:

- Which products generate the highest revenue?
- Which menu items sell the most?
- Which categories perform best?
- Which payment method is most preferred?
- Which employees handle the highest number of orders?
- How can revenue and profitability be improved?


# 🎯 Project Objectives

- Analyze overall cafe sales performance.
- Calculate revenue and profit.
- Identify best-selling products.
- Analyze customer demographics.
- Evaluate employee performance.
- Study payment trends.
- Build an interactive Power BI dashboard.
- Generate actionable business recommendations.


# 🛠️ Tech Stack

| Tool       |Purpose                   |
|------------|--------------------------|
| Python     | Data Cleaning & Analysis |
| Pandas     | Data Manipulation        |
| NumPy      | Numerical Operations     |
| Matplotlib | Data Visualization       |
| MySQL      | Database & SQL Analysis  |
| Power BI   | Dashboard Development    |
| Excel      | Data Inspection          |
| Git&GitHub | Version Control          |


📂 Dataset

The project uses a relational cafe sales dataset consisting of:

- Customers
- Employees
- Menu
- Orders
- Order Details

The dataset simulates a real-world Cafe Point of Sale (POS) system.



# 🗄️ Database Schema

The project follows a relational database structure.

Customers
     │
     │ Customer_ID
     ▼
Orders
     │
     │ Order_ID
     ▼
Order Details
     ▲
     │ Item_ID
Menu

Orders
     │
Employee_ID
     ▼
Employees


# ⚙️ Project Workflow

   Raw CSV Files
          │
          ▼
    Data Cleaning (Python)
          │
          ▼
    MySQL Database
          │
          ▼
    SQL Business Analysis
          │
          ▼
       Python EDA
          │
          ▼
    Power BI Dashboard
          │
          ▼
    Business Insights
          │
          ▼
    Business Recommendations



🧹 Data Cleaning

Performed using Python:
- Checked missing values
- Removed duplicate records
- Verified data types
- Validated relationships
- Created Revenue and Profit columns
- Merged multiple tables for analysis

---

# 🗃️ SQL Analysis

Business questions answered using SQL:
- Total Revenue
- Total Profit
- Average Order Value
- Top Selling Products
- Lowest Selling Products
- Category-wise Revenue
- Payment Method Analysis
- Employee Performance
- Customer Analysis
- Product Performance

SQL concepts used:
- JOIN
- GROUP BY
- ORDER BY
- Aggregate Functions
- CASE Statements
- DISTINCT
- LIMIT

---

# 🐍 Python Exploratory Data Analysis (EDA)

Performed using Pandas and Matplotlib:
- Revenue Analysis
- Profit Analysis
- Product Analysis
- Category Analysis
- Payment Method Analysis
- Customer Analysis
- Employee Performance
- Monthly Revenue Trend

---

# 📊 Power BI Dashboard

The interactive dashboard includes:
✅ KPI Cards
- Total Revenue
- Total Profit
- Total Orders
- Total Customers
- Average Order Value

✅ Visualizations
- Revenue by Category
- Monthly Revenue Trend
- Top 10 Products
- Payment Method Distribution
- Customer Gender Analysis
- Employee Performance

✅ Interactive Filters

- Category
- Payment Method
- Customer Gender
- Order Date

---

 📸 Dashboard Preview


📈 Key Performance Indicators (KPIs)
 💰 Total Revenue
 💵 Total Profit
 🧾 Total Orders 
 👥 Total Customers
 🛒 Average Order Value


# 💡 Key Business Insights

The analysis revealed several important business insights:

- Coffee products generated the highest revenue.
- UPI was the most preferred payment method.
- A few products contributed significantly to total sales.
- Some products generated high revenue despite lower sales volume.
- Employee performance varied across the team.
- Customer purchasing patterns highlighted opportunities for targeted promotions.



📌 Business Recommendations
Based on the analysis:
- Introduce premium coffee offerings.
- Bundle beverages with desserts.
- Promote high-profit products.
- Encourage digital payments.
- Schedule more employees during peak business hours.
- Focus marketing efforts on top-performing categories.


📁 Project Structure

Cafe-Business-Analytics/
│
├── dashboard/
│   └── Cafe_Dashboard.pbix
│
├── data/
│   ├── customers.csv
│   ├── employees.csv
│   ├── menu.csv
│   ├── orders.csv
│   └── order_details.csv
│
├── notebooks/
│   ├── Data_Cleaning.ipynb
│   └── EDA.ipynb
│
├── sql/
│   ├── schema.sql
│   └── business_queries.sql
│
├── images/
│   └── dashboard.png
│
├── README.md
│
└── requirements.txt


 🚀 Future Improvements

Future enhancements for this project include:

- Multi-branch cafe analysis
- Inventory management dashboard
- Customer loyalty analysis
- Sales forecasting using Machine Learning
- Advanced Power BI DAX Measures
- Drill-through reports
- Dynamic tooltips
- Automated data refresh

---

🎓 Skills Demonstrated

# SQL
- Database Design
- SQL Joins
- Aggregations
- Business Queries

# Python
- Data Cleaning
- Data Transformation
- Data Analysis
- Feature Engineering

# Power BI
- KPI Cards
- DAX Measures
- Interactive Dashboard
- Data Visualization
- Slicers & Filters

# Business Analytics
- Revenue Analysis
- Profit Analysis
- Customer Analytics
- Product Analytics
- Employee Performance
- Business Recommendations


# ▶️ How to Run the Project
1. Clone the repository
2. Import the CSV files into MySQL.
3. Execute the SQL scripts inside the `sql` folder.
4. Run the Jupyter notebooks for data cleaning and analysis.
5. Open the Power BI dashboard (`.pbix`) file.

# 👨‍💻 Author
   PRIYANKA DHAKAR

Aspiring Data Analyst passionate about SQL, Python, Power BI, and Business Analytics.

📧 Email: your-email@example.com
🔗 LinkedIn: https://linkedin.com/in/YOUR_LINKEDIN
💻 GitHub: https://github.com/YOUR_USERNAME

⭐


