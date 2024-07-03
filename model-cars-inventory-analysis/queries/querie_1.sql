-- Query to list total stock per warehouse, their remaining capacity, and evaluate if a warehouse can be eliminated

WITH WarehouseCapacity AS (
    SELECT 
        w.warehouseCode,
        w.warehouseName,
        w.warehousePctCap AS totalCapacity,
        SUM(p.quantityInStock) AS totalStock,
        (w.warehousePctCap - SUM(p.quantityInStock)) AS remainingCapacity
    FROM 
        warehouses w
    JOIN 
        product_warehouse pw ON w.warehouseCode = pw.warehouseCode
    JOIN 
        products p ON pw.productCode = p.productCode
    GROUP BY 
        w.warehouseCode, w.warehouseName, w.warehousePctCap
)

SELECT 
    source.warehouseCode AS sourceWarehouseCode,
    source.warehouseName AS sourceWarehouseName,
    source.totalStock AS sourceTotalStock,
    target.warehouseCode AS targetWarehouseCode,
    target.warehouseName AS targetWarehouseName,
    target.remainingCapacity AS targetRemainingCapacity,
    CASE
        WHEN target.remainingCapacity >= source.totalStock THEN 'Can be eliminated'
        ELSE 'Cannot be eliminated'
    END AS eliminationStatus
FROM 
    WarehouseCapacity source
JOIN 
    WarehouseCapacity target ON source.warehouseCode != target.warehouseCode
ORDER BY 
    source.warehouseCode, target.remainingCapacity DESC;
