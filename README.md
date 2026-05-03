# End-to-End-Video-Game-Market-Analysis-Sales-Engagement-Monetization-Insights

📌 Project Overview

This project analyzes the global video game industry by combining sales data and player engagement metrics to uncover meaningful business insights.

The goal is to answer key questions such as:

Which games and platforms generate the most revenue?
What genres attract the highest player engagement?
Does player engagement translate into sales?
Are there monetization gaps in certain genres?

The project follows an end-to-end data analytics workflow using SQL and Power BI, making it suitable for real-world business decision-making.

🎯 Objectives
Analyze global video game sales trends
Understand player engagement behavior
Identify top-performing games, genres, and platforms
Detect high engagement but low revenue opportunities
Build interactive dashboards for business insights
📊 Dataset Description
1️⃣ Sales Dataset (vgsales.csv)

Contains:

Platform
Genre
Global Sales
Regional Sales (NA, EU, JP, Other)
Release Year

👉 Used for revenue and market analysis

2️⃣ Engagement Dataset (games.csv)

Contains:

Title
Plays
Wishlist
Reviews Count
Rating
Genre

👉 Used for user behavior and satisfaction analysis

3️⃣ Merged Dataset

Created by combining both datasets on game title to analyze:

Engagement vs Sales
Monetization gaps
Strategy insights
🛠️ Tools & Technologies
SQL → Data querying & EDA
Power BI → Data visualization & dashboards
Excel / CSV → Data storage
DAX (Power BI) → Measures & KPIs
🔍 Exploratory Data Analysis (EDA)

A total of 30 EDAs were performed across three stages:

📌 Engagement Analysis (EDA 1–9)
Top games by plays, wishlist, reviews
Rating distribution
Genre-wise engagement
Player satisfaction patterns
📌 Sales Analysis (EDA 10–20)
Global sales trends over time
Platform-wise performance
Regional sales distribution
Genre contribution to revenue
📌 Combined Analysis (EDA 21–30)
Engagement vs Sales relationship
High engagement but low sales (monetization gap)
Genre + Platform performance
Regional demand by genre
📊 Dashboards
📊 1. Engagement Dashboard

Focuses on:

Player activity (plays, wishlist, reviews)
Genre-wise engagement
Rating distribution

👉 Helps understand user behavior and preferences

📈 2. Sales Dashboard

Focuses on:

Global sales trends
Platform performance
Regional market analysis

👉 Helps understand revenue drivers

🔗 3. Business Insights Dashboard

Focuses on:

Engagement vs Sales correlation
Monetization gaps
Best genre–platform combinations

👉 Helps support strategic decision-making

💡 Key Insights
A few blockbuster games contribute significantly to total sales
Certain genres (like Indie/Strategy combinations) show high engagement but lower sales
Platform choice plays a major role in game success
North America and Europe dominate global sales markets
Engagement metrics (wishlist, plays) can act as early indicators of game performance
📈 Business Impact

This analysis can help:

Game developers → focus on high-engagement genres
Publishers → optimize pricing and monetization
Marketing teams → target the right regions and platforms
Product teams → improve player retention strategies
📁 Project Structure
├── data/
│   ├── games.csv
│   ├── vgsales.csv
│
├── sql/
│   ├── query_1.sql ... query_9.sql
│
├── powerbi/
│   ├── dashboard.pbix
│
├── README.md
🎤 How to Explain This Project (Short Version)

This is an end-to-end data analytics project where I analyzed video game sales and player engagement data using SQL and Power BI. I performed 30 exploratory analyses and built 3 dashboards focusing on sales, user behavior, and business insights. One key finding was identifying genres with high engagement but low sales, indicating monetization opportunities.

🚀 Future Improvements
Add machine learning model for sales prediction
Improve data cleaning and genre standardization
Deploy dashboards online (Power BI Service)
👩‍💻 Author

Prajna C
📧 prajnac64@gmail.com

🔗 LinkedIn: (add your link)
💻 GitHub: Prajna64

🔥 EXTRA (IMPORTANT FOR YOU)
Your GitHub description (short one-liner)

Use this:

End-to-end data analytics project analyzing video game sales and player engagement using SQL & Power BI, with 3 interactive dashboards and 30 EDA insights.
