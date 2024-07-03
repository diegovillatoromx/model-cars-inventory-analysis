-- Query to identify non-moving items and candidates for being dropped from the product line

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
    COALESCE(ps.totalSales, 0) AS totalSales,
    CASE
        WHEN COALESCE(ps.totalSales, 0) = 0 THEN 'No sales'
        WHEN p.quantityInStock > COALESCE(ps.totalSales, 0) * 3 THEN 'Low sales'
        ELSE 'Normal sales'
    END AS salesStatus
FROM 
    products p
LEFT JOIN 
    ProductSales ps ON p.productCode = ps.productCode
ORDER BY 
    p.productCode;
