CREATE TABLE new_table
AS (SELECT *
    FROM ft_table
    WHERE login LIKE '%a%' 
    ORDER BY login  

    )
;
