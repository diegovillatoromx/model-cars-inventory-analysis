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


```plaintext
### Repository Structure

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
