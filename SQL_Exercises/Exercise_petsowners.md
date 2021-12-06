# At the Vet

![](https://lh3.googleusercontent.com/proxy/q-paEHLGoGZsnC0bh9Zmz5cCKb58MQkIIB-retouRq2XG5OGNdA4rgY8O6eQ16dERTxd7Bxjuppgoey8-Hz6TMh4kJPgQeQYH2_-zzhfo4N_j2QpbPlznky4ehHvhSkXwHhCz36RGvUCil8p7DhdzdU3M3DPRlMgAaM)

You are assisting a vet clinic in making sense of their data. Their data is in two tables. And they need you tu perform the following analytics:

1. How many pets, how many owners? Hint: [Use COUNT()](https://www.postgresql.org/docs/8.2/functions-aggregate.html)
2. What are the most and least common petnames? Hint: [Use ORDER BY](https://www.postgresql.org/docs/8.1/queries-order.html)
3. What kind of pets do we have? Hint: [Use DISTINCT](https://www.postgresql.org/docs/9.5/sql-select.html)
4. What is the gender balance across pets and species? Hint: [Use GROUP BY](https://www.postgresql.org/docs/9.4/tutorial-agg.html)
5. What is the average age of the pets? Hint: [Use AVG()](https://www.postgresql.org/docs/9.4/tutorial-agg.html)
6. How many owners have more than one pet? Hint: [Use GROUP BY HAVING](https://www.postgresql.org/docs/9.4/tutorial-agg.html)
7. Do the owners that have more than one pet have the same kind of pet. Hint: [Use Subquieries](https://www.w3resource.com/sql/subqueries/understanding-sql-subqueries.php)
8. Do owners name their pets like owners? Hint: [Use INNER JOIN](https://www.postgresql.org/docs/8.3/tutorial-join.html)
9. Extract the information of petnames and owners side-by-side! Hint: [Use FULL JOIN](https://www.postgresql.org/docs/8.3/tutorial-join.html)
10. What are the cities with the largest amount of pets? Hint: [Use INNER JOIN](https://www.postgresql.org/docs/8.3/tutorial-join.html)

## Let's look at some of the procedures those pets had.

1. Match procedure history to procedure details! 
2. What pets did't get rabies vaccination? Hint: [Use LEFT JOIN](https://www.postgresql.org/docs/8.3/tutorial-join.html), [Use ARRAY_AGG()](https://www.postgresql.org/docs/8.2/functions-aggregate.html) and [Use ALL()](https://www.postgresql.org/docs/9.1/functions-comparisons.html)
3. What is the most prevalent type of surgery? Hint: [Use IS NOT NULL](https://www.postgresql.org/docs/8.3/functions-comparison.html)
4. How much did owners spend on their pets? Hint: [Use SUM()](https://www.postgresql.org/docs/8.2/functions-aggregate.html)
5. Look at the data and ask yourself what more questions one could ask!