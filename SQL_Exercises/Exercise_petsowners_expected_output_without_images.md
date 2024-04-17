# At the Vet

*Note: This markdown files contains the questions as well as the expected outputs of the queries you need to run in order to answer them.*

You are assisting a vet clinic in making sense of their data. Their data is in two tables. And they need you tu perform the following analytics:

1. How many pets, how many owners? Hint: [Use COUNT()](https://www.postgresql.org/docs/8.2/functions-aggregate.html)
   1. Expected output pets:

        | | count|
        |-|:----:|
        |1|  100 |

    2. Expected output owners:
        | | count|
        |-|:----:|
        |1|  89  |


2. What are the most and least common pet names? Hint: [Use ORDER BY](https://www.postgresql.org/docs/8.1/queries-order.html)
   1. Expected Output most common name: 
        | | name | count|
        |-|:----:|:----:|
        |1|  Biscuit | 8|

   2. Expected Output least common name: 
        | | name | count|
        |-|:----:|:----:|
        |1|  Schwarzkopf | 1|

3. What kind of pets do we have? Hint: [Use DISTINCT](https://www.postgresql.org/docs/9.5/sql-select.html)
   
    - Expected output:
    
        | | kind |
        |-|:----:|
        |1|  Cat |
        |2| Parrot|
        |3| Dog|

4. What is the gender balance across pets and species? Hint: [Use GROUP BY](https://www.postgresql.org/docs/9.4/tutorial-agg.html)
   1. Expected output gender balance pets:
        | | gender | count|
        |-|:----:|:----:|
        |1| female | 41 |
        |2|  male | 59|
    
    2. Expected output gender balance pets by kind:
        | | kind | gender | count|
        |-|:----:|:----:| :----:|
        |1|  Cat | male | 19 |
        |2|  Cat | female | 12 |
        |3|  Dog | male | 35 |
        |4|  Dog | female | 22 |
        |5|  Parrot | male | 5 |
        |6|  Parrot | female | 7 |

5. What is the average age of the pets? Hint: [Use AVG()](https://www.postgresql.org/docs/9.4/tutorial-agg.html)

   - Expected output: 
        | | avg_age |
        |-|:----:|
        |1|  6.93 |

6. How many owners have more than one pet? Hint: [Use GROUP BY HAVING](https://www.postgresql.org/docs/9.4/tutorial-agg.html)

    - Expected output:
        | | count |
        |-|:----:|
        |1|  8 |

7. Do the owners that have more than one pet have the same kind of pet. [Use ARRAY_AGG](https://www.postgresqltutorial.com/postgresql-aggregate-functions/postgresql-array_agg/)
   
     - Expected output (one possible approach): 
        | | pet_list       | ownerid |
        |-|          :----:|:----:| 
        |1|  {Dog,Dog,Cat} | 8133 |
        |2|  {Dog,Dog}     | 9850 |
        |3|  {Dog,Dog}     | 7846 | 
        |4|  {Parrot,Cat}  | 6102 |
        |5|  {Dog,Dog}     | 1306 |
        |6|  {Dog,Parrot}  | 7484 |
        |7|  {Cat,Cat,Cat} | 5508 |
        |8|  {Dog,Dog,Cat} | 3089 |

8. Do owners name their pets like owners? Hint: [Use INNER JOIN](https://www.postgresql.org/docs/8.3/tutorial-join.html)

    - Expected output: 
        | | owner_name | pet_name |
        |-|  :----:|:----:| 
        |1|  Bruce | Bruce |

9.  Extract the information of pet names and owners side-by-side! Hint: [Use FULL JOIN](https://www.postgresql.org/docs/8.3/tutorial-join.html)

    - Expected output (only first rows shown):
        | | owner_name | pet_name | ownerid|
        |-|:----:|:----:| :----:|
        |1|  Jessica  | Biscuit | 1070 |
        |2|  Ross     | Stowe | 1132 |
        |3|  Susan    | Enyo | 1202 |
        |4|  Benjamin | Collette | 1306 |
        |5|  Benjamin | Danger | 1306 |
        |6|  Charles  | Rumba | 1312|

10.  What are the cities with the largest amount (top 3) of pets? Hint: [Use INNER JOIN](https://www.postgresql.org/docs/8.3/tutorial-join.html)

     - Expected output: 
        | | city | num_pets |
        |-|  :----:|:----:| 
        |1|  Southfield | 18 |
        |2|  Grand Rapids | 10 |
        |3|  Detroit | 18 |


## Let's look at some of the procedures those pets had.

1. Combine the tables with the procedure history and the procedure details. You might have to join tables based on more than one column...

    - Expected output (one possible approach): 
        | | pet_id | proceduredate | proceduretype | proceduresubcode| proceduretype| proceduresubcode| description| price|
        |-|:----:|:----:| :----:| :----:|:----:| :----:| :----:| :----:|
        |5|  A3-4631  | 2016-12-21 |  GENERAL SURGERIES | 01| GENERAL SURGERIES| 01| Anal Gland Caut| 150|
        |6|  C9-6195  | 2016-06-08 |  GENERAL SURGERIES | 01| GENERAL SURGERIES| 01| Anal Gland Caut| 150|
        |7|  B2-6917  | 2016-03-28 |  GENERAL SURGERIES | 01| GENERAL SURGERIES| 01| Anal Gland Caut| 150|
        |8|  C6-7387  | 2016-12-11 |  GENERAL SURGERIES | 01| GENERAL SURGERIES| 01| Anal Gland Caut| 150|
        |9|  A2-4511  | 2016-09-19 |  GENERAL SURGERIES | 01| GENERAL SURGERIES| 01| Anal Gland Caut| 150|
        |10|  A3-1183  | 2016-02-12 |  GENERAL SURGERIES | 01| GENERAL SURGERIES| 01| Anal Gland Caut| 150|
        |11|  B7-2214  | 2016-10-21 |  GENERAL SURGERIES | 02| GENERAL SURGERIES| 02| Aural Hematoma| 108|
        |12|  A1-5144  | 2016-06-17 |  GENERAL SURGERIES | 02| GENERAL SURGERIES| 02| Aural Hematoma| 108|
        |13|  D1-9261  | 2016-02-11 |  GENERAL SURGERIES | 02| GENERAL SURGERIES| 02| Aural Hematoma| 108|
        |14|  E6-7012  | 2016-05-04 |  GENERAL SURGERIES | 02| GENERAL SURGERIES| 02| Aural Hematoma| 108|

2. What pets didn't get rabies vaccination? Hint: [Use LEFT JOIN](https://www.postgresql.org/docs/8.3/tutorial-join.html), [Use ARRAY_AGG()](https://www.postgresql.org/docs/8.2/functions-aggregate.html) and [Use ALL()](https://www.postgresql.org/docs/9.1/functions-comparisons.html)
   
    - Expected output (first part):
        | | petid |
        |-| :----: |
        |1| A0-1431|
        |2| A0-1450|
        |3| A0-1972|
        |4| A0-2151|
        |5| A0-2451|
        |6| A0-2610|
        |7| A0-3807|

3. What is the most prevalent type of surgery? Hint: [Use IS NOT NULL](https://www.postgresql.org/docs/8.3/functions-comparison.html)

    - Expected output:
        | | description | count |
        |-|  :----:|:----:| 
        |1|  Declaw | 91 |

4. What owner spent the most on their pet and how much was it? Hint: [Use SUM()](https://www.postgresql.org/docs/8.2/functions-aggregate.html)

    - Expected output:
        | | ownerid | spending |
        |-|  :----:|:----:| 
        |1|  8316 | 450 |

5. Look at the data and ask yourself what more questions one could ask!
