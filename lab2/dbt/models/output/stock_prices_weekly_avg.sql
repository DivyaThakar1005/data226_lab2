SELECT
    DATE_TRUNC('week', DATE) AS week_start,
    AVG(CLOSE) AS avg_close_price,
    SUM(VOLUME) AS total_volume,
    MAX(timestamp) AS timestamp
FROM
    {{ ref("stock_price") }}
GROUP BY
    DATE_TRUNC('week', DATE)
ORDER BY
    week_start

