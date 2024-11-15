
SELECT
    CASE
        WHEN CLOSE < 55 THEN '<55'
        WHEN CLOSE BETWEEN 55 AND 60 THEN '55-60'
        WHEN CLOSE BETWEEN 60 AND 65 THEN '60-65'
        ELSE '>65'
    END AS close_price_range,
    COUNT(*) AS days_in_range,
    AVG(VOLUME) AS avg_volume,
    AVG(CLOSE) AS avg_close_price,
    MAX(timestamp) AS timestamp
FROM
    {{ ref("stock_price") }}
GROUP BY
    close_price_range
ORDER BY
    close_price_range


