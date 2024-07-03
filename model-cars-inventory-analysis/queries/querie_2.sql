-- Query to compare inventory numbers with sales figures

WITH ProductSales AS (
    SELECT 
        od.productCode,
        SUM(od.quantityOrdered) AS totalSales
    FROM 
        orderdetails od
    GROUP BY 
        od.productCode
)

SELECT 
    p.productCode,
    p.productName,
    p.quantityInStock AS inventoryCount,
    ps.totalSales,
    CASE
        WHEN p.quantityInStock >= ps.totalSales THEN 'Inventory is sufficient'
        ELSE 'Inventory is insufficient'
    END AS inventoryStatus
FROM 
    products p
LEFT JOIN 
    ProductSales ps ON p.productCode = ps.productCode
ORDER BY 
    p.productCode;
