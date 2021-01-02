SELECT CASE
            WHEN A+B > C AND B+C > A AND A+C > B THEN -- condition 1
                CASE -- condition 2
                    WHEN A=B AND B=C THEN 'Equilateral'
                    WHEN A=B OR B=C OR A=C THEN 'Isosceles'
                    WHEN A!=B AND B!=C THEN 'Scalene'
                END
            ELSE 'Not A Triangle' 
            END
FROM triangles
    
