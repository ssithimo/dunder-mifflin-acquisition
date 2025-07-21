## 📒 Notebook: dunder-mifflin-acquisition.ipynb

This Jupyter/Colab notebook contains the full exploratory data analysis (EDA) process conducted in support of Dunder Mifflin’s potential acquisition of Parch & Posey.

### 🔍 Purpose
The notebook walks through a structured SQL-driven analysis designed to help leadership evaluate:
- Customer base and regional footprint
- Revenue and product mix by paper type
- Sales rep coverage and reallocation strategy
- Market growth trends (2014–2016)
- Insights for marketing and operational decision-making

### 📁 Structure
Each section of the notebook includes:
- A clear business question
- A corresponding SQL query (PostgreSQL syntax)
- A concise interpretation of the results
- Visualizations where applicable (e.g., line and bar charts)

### 🚀 How to Use
If you're running the notebook in Google Colab or Jupyter:
1. Clone the repo:
   ```
   git clone https://github.com/ssithimo/dunder-mifflin-acquisition.git
   cd dunder-mifflin-acquisition
   ```
2. Create and configure your dunder.env file
Create a dunder.env file in the root of the repo with your PostgreSQL connection details:
```
DB_USER=your_username
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432
DB_NAME=your_database
```
4. Open dunder_acquisition_analysis.ipynb in Jupyter or VS Code.
The database credentials will be pulled from your dunder.env file and used to connect with PostgreSQL via SQLAlchemy and Pandas.

Alternatively, view the notebook as a fully annotated portfolio project on [nbviewer](#) or open it in Colab.

### 🧠 Tools & Technologies
- Exploratory Data Analysis (EDA)
- Joins (INNER, LEFT, RIGHT, FULL)
- Grouping and Aggregation (GROUP BY)
- Window Functions (RANK, PARTITION BY)
- Common Table Expressions (CTEs) with WITH
- Subqueries
- Filtering with WHERE, CASE, HAVING
- Environment-based database access for secure credential management
- Business insights & operational recommendations from data
- Visual storytelling (bar charts, line charts, pie charts)

---
