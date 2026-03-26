
# 📊 Customer Shopping Behavior Analysis

## 🔍 Overview

This project analyzes customer shopping behavior using a dataset of **3,900 transactions** to uncover actionable business insights.

The workflow covers **data loading, cleaning, exploratory data analysis (EDA), SQL-based analysis, dashboard creation, and reporting**. The goal is to support data-driven decision-making in areas like customer segmentation, product performance, and revenue optimization.

---

## 📁 Dataset

* **Total Records:** 3,900 transactions

* **Features:** 18 columns

* **Key Attributes:**

  * Customer demographics (Age, Gender, Location)
  * Purchase details (Item, Category, Amount)
  * Behavior metrics (Frequency, Ratings)
  * Business factors (Discounts, Shipping Type, Subscription)

* **Data Issues Handled:**

  * 37 missing values in review ratings (imputed)
  * Column standardization (snake_case format)

---

## 🛠️ Tools & Technologies

* **Python** (Pandas, NumPy, Matplotlib, Seaborn)
* **SQL** (PostgreSQL / MySQL / SQL Server)
* **Power BI** (Dashboard & Visualization)
* **Gamma** (Presentation creation)
* **Jupyter Notebook / VS Code**

---

## ⚙️ Project Workflow

### 1. Data Loading

* Imported dataset using Pandas
* Verified structure using `.info()` and `.describe()`

### 2. Data Cleaning

* Handled missing values
* Standardized column names
* Ensured consistency in categorical data

### 3. Exploratory Data Analysis (EDA)

* Analyzed customer demographics
* Identified revenue trends
* Explored product performance and ratings

### 4. Feature Engineering

* Created age groups
* Derived purchase frequency metrics

### 5. SQL Analysis

* Loaded cleaned data into database
* Performed queries for:

  * Revenue analysis
  * Customer segmentation
  * Product insights

### 6. Dashboard Creation

* Built interactive dashboards in Power BI
* Visualized KPIs and trends

### 7. Reporting & Presentation

* Generated insights report
* Created presentation using Gamma

---

## 📊 Dashboard Highlights

* Revenue by Gender & Age Group
* Top-rated and best-selling products
* Customer segmentation (New, Returning, Loyal)
* Impact of discounts and shipping type
* Subscription vs non-subscription analysis

---

## 📈 Key Results & Insights

* Male customers generate **2.1× more revenue** than female customers

* **Young adults** are the highest revenue contributors

* **Non-subscribers generate 2.7× more revenue**

* Express shipping customers spend more per purchase

* Top products include:

  * Gloves
  * Sandals
  * Boots

* **98% of customers are returning or loyal**, indicating strong retention

---

## 💡 Business Recommendations

* Introduce **loyalty programs** to retain customers
* Promote **subscriptions with added benefits**
* Optimize **discount strategies** to maintain profit margins
* Focus marketing on **high-value customer segments**

---

## ▶️ How to Run the Project

### 1. Clone Repository

```bash
git clone https://github.com/your-username/project-name.git
cd project-name
```

### 2. Install Dependencies

```bash
pip install -r requirements.txt
```

### 3. Run Python Analysis

```bash
python main.py
```

### 4. Setup Database

* Import dataset into PostgreSQL/MySQL/SQL Server
* Run SQL scripts from `/sql` folder

### 5. Open Dashboard

* Open `.pbix` file in Power BI

---

## 📌 Project Deliverables

* Python EDA Notebook
* Cleaned Dataset
* SQL Queries
* Power BI Dashboard
* Analytical Report
* Presentation

---

## 🚀 Conclusion

This project demonstrates end-to-end data analytics skills, including **data preprocessing, analysis, SQL querying, visualization, and business storytelling**—making it highly relevant for roles in **Data Analysis and Business Intelligence**.

