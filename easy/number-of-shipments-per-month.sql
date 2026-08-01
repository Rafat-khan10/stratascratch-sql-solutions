SELECT
    TO_CHAR(shipment_date, 'YYYY-MM') AS year_month,
    COUNT(*) AS count
FROM amazon_shipment
GROUP BY TO_CHAR(shipment_date, 'YYYY-MM')
