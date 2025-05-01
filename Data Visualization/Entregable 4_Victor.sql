
-- Consulta para obtener las ventas por categoria
SELECT ROUND(SUM(fs.TOTAL_UNIT_SALES),2) AS TOTAL_UNIT_SALES,
	   ROUND(SUM(fs.TOTAL_VALUE_SALES),2) TOTAL_VALUE_SALES,
	   ROUND(SUM(fs.TOTAL_UNIT_AVG_WEEKLY_SALES),2) TOTAL_UNIT_AVG_WEEKLY_SALES,
	   dp.CATEGORY,
	   ds.ATTR1
FROM dbo.fact_sales fs
	INNER JOIN dbo.dim_product dp ON fs.ITEM_CODE = dp.ITEM
	INNER JOIN dbo.dim_segment ds ON dp.CATEGORY = ds.CATEGORY
GROUP BY dp.CATEGORY, ds.ATTR1
ORDER BY ROUND(SUM(fs.TOTAL_VALUE_SALES),2) DESC

-- De acuerdo a la consulta por categoria, solamente hay información de las ventas relacionadas a la categoría 1 en donde los productos de blanqueador seguro fueron los que más valor generaron, seguido del cloro, prelavador y finalmente el sanitizante. --




-- Consulta para obtener las ventas por region--
SELECT ROUND(SUM(TOTAL_UNIT_SALES),2) AS TOTAL_UNIT_SALES,
	   ROUND(SUM(TOTAL_VALUE_SALES),2) AS TOTAL_VALUE_SALES,
	   ROUND(SUM(TOTAL_UNIT_AVG_WEEKLY_SALES),2) AS TOTAL_UNIT_AVG_WEEKLY_SALES,
	   REGION
FROM dbo.fact_sales
GROUP BY REGION
ORDER BY TOTAL_VALUE_SALES DESC

-- De acuerdo a la consulta de ventas por region, la region total autos scanning mexico es la que mas generó valor en ventas mientras que la región 4 fue la que menos valor generó.




-- Consulta para obtener las ventas por periodo de tiempo
-- Agrupamiento por año
SELECT ROUND(SUM(fs.TOTAL_UNIT_SALES),2) AS TOTAL_UNIT_SALES,
	   ROUND(SUM(fs.TOTAL_VALUE_SALES),2) AS TOTAL_VALUE_SALES,
	   ROUND(SUM(fs.TOTAL_UNIT_AVG_WEEKLY_SALES),2) AS TOTAL_UNIT_AVG_WEEKLY_SALES,
	   dc.YEAR
FROM dbo.fact_sales fs
	INNER JOIN dbo.dim_calendar dc ON fs.WEEK = dc.WEEK
GROUP BY dc.YEAR 
ORDER BY TOTAL_VALUE_SALES DESC


-- Agrupamiento por mes del año 2022)
SELECT ROUND(SUM(fs.TOTAL_UNIT_SALES),2) AS TOTAL_UNIT_SALES,
	   ROUND(SUM(fs.TOTAL_VALUE_SALES),2) AS TOTAL_VALUE_SALES,
	   ROUND(SUM(fs.TOTAL_UNIT_AVG_WEEKLY_SALES),2) AS TOTAL_UNIT_AVG_WEEKLY_SALES,
	   dc.MONTH
FROM dbo.fact_sales fs
	INNER JOIN dbo.dim_calendar dc ON fs.WEEK = dc.WEEK
WHERE dc.YEAR = 2022
GROUP BY dc.MONTH
ORDER BY ROUND(SUM(fs.TOTAL_VALUE_SALES),2) DESC;

-- Agrupamiento por mes del año 2023)
SELECT ROUND(SUM(fs.TOTAL_UNIT_SALES),2) AS TOTAL_UNIT_SALES,
	   ROUND(SUM(fs.TOTAL_VALUE_SALES),2) AS TOTAL_VALUE_SALES,
	   ROUND(SUM(fs.TOTAL_UNIT_AVG_WEEKLY_SALES),2) AS TOTAL_UNIT_AVG_WEEKLY_SALES,
	   dc.MONTH
FROM dbo.fact_sales fs
	INNER JOIN dbo.dim_calendar dc ON fs.WEEK = dc.WEEK
WHERE dc.YEAR = 2023
GROUP BY dc.MONTH
ORDER BY ROUND(SUM(fs.TOTAL_VALUE_SALES),2) DESC;




-- De acuerdo a la consulta de ventas por año, el año 2022 generó más valor en ventas que el año 2023. En el caso del 2022, el mes en que más valor generado se tuvo fue en julio (mes 7) mientras que en el año 2023 el mes que más valor generó fue mayo (mes 5)--