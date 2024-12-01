SELECT 
    SUM(similarity) as answer
FROM (
    SELECT 
        COALESCE(a * b_count, 0) as similarity
    FROM day_1_raw
    LEFT OUTER JOIN (
        SELECT b, COUNT(*) b_count
        FROM day_1_raw 
        GROUP BY b
    ) as b_count on b_count.b = day_1_raw.a
);
