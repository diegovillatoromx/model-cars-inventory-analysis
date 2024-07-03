# Model Cars Inventory Analysis for Mint Classics Company

### Overview:
Welcome to the `model-cars-inventory-analysis` repository. This project dives into the detailed analysis of model cars inventory data for Mint Classics Company. The aim is to leverage database management techniques and SQL queries to support strategic business decisions regarding inventory management and facility closure.

### Project Scenario:
Mint Classics Company, a distinguished retailer specializing in classic model cars and vehicles, is contemplating the closure of one of its storage facilities. To facilitate this decision with data-driven insights, the company seeks recommendations on optimizing inventory while maintaining efficient customer service. Specifically, they aim to fulfill customer orders within 24 hours of placement.

As a data analyst on this project, your task involves utilizing MySQL Workbench to explore and analyze the provided dataset. You will examine the data model and sample tables to identify opportunities for inventory reduction or reorganization. This analysis will be supported by SQL queries aimed at answering critical questions:

- Inventory Location Optimization: Assessing the feasibility of consolidating or reorganizing warehouse space.
- Inventory-Sales Relationship: Analyzing the correlation between inventory levels and sales figures to optimize stock levels.
- Identification of Non-Moving Items: Identifying products with low turnover rates to consider for removal from the product line.
- The insights derived from this analysis will inform recommendations aimed at achieving efficient inventory management and supporting the closure of a storage facility.

## EER Diagram

![diagram](https://github.com/diegovillatoromx/model-cars-inventory-analysis/blob/main/model-cars-inventory-analysis/diagrams/EER.png)


## Repository Structure

```plaintext
model-cars-inventory-analysis/
├── datasets/
│   ├── customers.csv       # Customer data
│   ├── employees.csv       # Employee data
│   ├── offices.csv         # Office data
│   ├── orderdetails.csv    # Order details
│   ├── orders.csv          # Order data
│   ├── payments.csv        # Payment data
│   ├── productlines.csv    # Product lines
│   ├── products.csv        # Product data
│   └── warehouses.csv      # Warehouse data
├── diagrams/
│   └── EER_diagram.png     # EER (Entity-Relationship) diagram
├── sql/
│   ├── ddl/
│   │   └── create_tables.sql   # SQL script to create database tables
│   ├── dml/
│   │   └── insert_data.sql     # SQL script to insert data into tables
│   └── queries/
│       ├── inventory_queries.sql     # SQL queries related to inventory locations
│       ├── sales_queries.sql         # SQL queries related to sales
│       └── non_moving_items.sql      # SQL queries to identify non-moving items
└── visualizations/
    ├── inventory_trends.png   # Graph showing inventory trends
    ├── sales_figures.png      # Graph showing sales figures
    └── non_moving_items.png   # Graph showing non-moving items
```



## Import and Execute Scripts in MySQL Workbench

### Step 1: Create the Tables

1. **Open MySQL Workbench**:
   - Launch MySQL Workbench on your computer.

2. **Open a New SQL Editor**:
   - Click on the `+` icon to open a new SQL editor tab. Alternatively, you can navigate to `File` > `New Query Tab`.

3. **Copy and Paste the Content of `create_tables.sql`**:
   - Open the `create_tables.sql` file in a text editor.
   - Copy the entire content of the file.

4. **Execute the Script to Create the Tables**:
   - Paste the copied SQL script into the new SQL editor tab in MySQL Workbench.
   - Ensure you have selected the appropriate database schema where the tables will be created.
   - Click on the lightning bolt icon (Execute) to run the script, which will create all the necessary tables for your database.

### Step 2: Insert the Data

1. **Open a New SQL Editor**:
   - If you closed the previous SQL editor, open a new one by clicking on the `+` icon or navigating to `File` > `New Query Tab`.

2. **Copy and Paste the Content of `insert_data.sql`**:
   - Open the `insert_data.sql` file in a text editor.
   - Copy the entire content of the file.

3. **Execute the Script to Insert Data into the Tables**:
   - Paste the copied SQL script into the new SQL editor tab in MySQL Workbench.
   - Again, ensure you have selected the appropriate database schema where the data will be inserted.
   - Click on the lightning bolt icon (Execute) to run the script, which will insert the data from your CSV files into the corresponding tables.

By following these detailed steps, you will successfully create the tables and insert the necessary data into your MySQL database, ensuring it is ready for further analysis and queries.

