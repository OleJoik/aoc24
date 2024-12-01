SELECT 
    SUM(abs)
FROM (
    SELECT ABS(a_sorted - b_sorted) as abs
    FROM day_1_raw
    JOIN (
        SELECT 
            a as a_sorted, 
            ROW_NUMBER() OVER (ORDER BY a ASC) as sort_order
        FROM day_1_raw
        ) AS a_sorted 
        ON a_sorted.sort_order = day_1_raw.id
    JOIN (
        SELECT 
            b as b_sorted, 
            ROW_NUMBER() OVER (ORDER BY b ASC) as sort_order
        FROM day_1_raw
        ) AS b_sorted 
        ON b_sorted.sort_order = day_1_raw.id
);
