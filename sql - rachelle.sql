-- SEE HOW MANY YOU CAN GET THROUGH BY 10am :) 

-- What's the title and ID of the longest film?
-- BONUS points if you use a subquery :) 

*** ANSWER ***

       title        | film_id | length
--------------------+---------+--------
 Chicago North      |     141 |    185
 Control Anthem     |     182 |    185
 Darn Forrester     |     212 |    185
 Gangs Pride        |     349 |    185
 Home Pity          |     426 |    185
 Muscle Bright      |     609 |    185
 Pond Seattle       |     690 |    185
 Soldiers Evolution |     817 |    185
 Sweet Brotherhood  |     872 |    185
 Worst Banger       |     991 |    185
(10 rows)


*** QUERY ***

SELECT
    title, 
    film_id, 
    length
FROM 
    film
WHERE
    length = (SELECT MAX(length) FROM film);


-- What is the title and ID of the film with the lowest replacement cost?
-- BONUS points if you use a subquery :) 

*** ANSWER ***

         title          | film_id | replacement_cost
------------------------+---------+------------------
 Anaconda Confessions   |      23 |             9.99
 Cider Desire           |     150 |             9.99
 Control Anthem         |     182 |             9.99
 Daisy Menagerie        |     203 |             9.99
 Deliverance Mulholland |     221 |             9.99
 Dude Blindness         |     260 |             9.99
 Edge Kissing           |     272 |             9.99
 Encino Elf             |     281 |             9.99
 Factory Dragon         |     299 |             9.99
 Fellowship Autumn      |     307 |             9.99
 Gandhi Kwai            |     348 |             9.99
 Gunfighter Mussolini   |     389 |             9.99
 Heartbreakers Bright   |     409 |             9.99
 Jason Trap             |     476 |             9.99
 Kissing Dolls          |     501 |             9.99
 Life Twisted           |     522 |             9.99
 Maiden Home            |     551 |             9.99
 Matrix Snowman         |     565 |             9.99
 Metropolis Coma        |     572 |             9.99
 Newton Labyrinth       |     623 |             9.99
 North Tequila          |     627 |             9.99
 Notorious Reunion      |     629 |             9.99
 Opposite Necklace      |     639 |             9.99
 Papi Necklace          |     656 |             9.99
 Paths Control          |     662 |             9.99
 Pluto Oleander         |     686 |             9.99
 Purple Movie           |     705 |             9.99
 Roxanne Rebel          |     747 |             9.99
 Star Operation         |     841 |             9.99
 Stepmom Dream          |     845 |             9.99
 Sting Personal         |     846 |             9.99
 Sun Confessions        |     863 |             9.99
 Talented Homicide      |     875 |             9.99
 Telemark Heartbreakers |     880 |             9.99
 Theory Mermaid         |     886 |             9.99
 Thin Sagebrush         |     888 |             9.99
 Trojan Tomorrow        |     912 |             9.99
 Truman Crazy           |     915 |             9.99
 Valentine Vanishing    |     931 |             9.99
 Wait Cider             |     953 |             9.99
 Young Language         |     996 |             9.99
(41 rows)

*** QUERY ***

SELECT
    title, 
    film_id, 
    replacement_cost
FROM 
    film
WHERE
    replacement_cost = (SELECT MIN(replacement_cost) FROM film);



-- What is the title and ID of the film with the highest rental_rate?

*** ANSWER ***

           title           | film_id | rental_rate
---------------------------+---------+-------------
 Chamber Italian           |     133 |        4.99
 Grosse Wonderful          |     384 |        4.99
 Airport Pollock           |       8 |        4.99
 Bright Encounters         |      98 |        4.99
 Ace Goldfinger            |       2 |        4.99
 Airplane Sierra           |       7 |        4.99
 Aladdin Calendar          |      10 |        4.99
 Ali Forever               |      13 |        4.99
 Amelie Hellfighters       |      20 |        4.99
 American Circus           |      21 |        4.99
 Anthem Luke               |      28 |        4.99
 Apache Divine             |      31 |        4.99
 Apocalypse Flamingos      |      32 |        4.99
 Dying Maker               |     265 |        4.99
 Attacks Hate              |      44 |        4.99
 Attraction Newton         |      45 |        4.99
 Autumn Crow               |      46 |        4.99
 Baby Hall                 |      47 |        4.99
 Backlash Undefeated       |      48 |        4.99
 Casualties Encino         |     126 |        4.99
 Beast Hunchback           |      60 |        4.99
  •  •  
 Whale Bikini              |     971 |        4.99
 Whisperer Giant           |     972 |        4.99
 Wife Turn                 |     973 |        4.99
 Witches Panic             |     979 |        4.99
 Wizard Coldblooded        |     980 |        4.99
 Wonderland Christmas      |     985 |        4.99
 Working Microcosmos       |     989 |        4.99
 Wyoming Storm             |     994 |        4.99
 Yentl Idaho               |     995 |        4.99
 Zorro Ark                 |    1000 |        4.99
(336 rows)

*** QUERY ***

SELECT
    title, 
    film_id, 
    rental_rate
FROM 
    film
WHERE
    rental_rate = (SELECT MAX(rental_rate) FROM film);


-- Show the payment_id's of all transactions after or on May 1st 2007

*** ANSWER ***

 payment_id
------------
      31917
      31918
      31919
      31920
      31921
      31922
      31923
      31924
  •  •  
(182 rows)
    

*** QUERY ***

SELECT 
    payment.payment_id

FROM 
    payment

WHERE 
    payment_date >= '2007-05-01 00:00:00';

-- Show all payment ID's and payment date's with a transaction amount less than $3.

*** ANSWER ***

 payment_id |        payment_date
------------+----------------------------
      17504 | 2007-02-16 17:23:14.996577
      17506 | 2007-02-19 19:39:56.996577
      17511 | 2007-02-20 13:57:39.996577
      17514 | 2007-02-17 01:26:00.996577
      17515 | 2007-02-17 04:32:51.996577
      17518 | 2007-02-21 14:42:28.996577
      17521 | 2007-02-16 14:00:38.996577
      17522 | 2007-02-15 01:26:17.996577
 •  •  
(6558 rows)

*** QUERY ***

SELECT 
    payment_id, 
    payment_date
    
FROM 
    payment

WHERE 
    amount < 3;

-- Get the emails of all customers that shop at store 1 that are inactive (use 'active')

** ANSWER **

                email                | store_id | active
-------------------------------------+----------+--------
 sheila.wells@sakilacustomer.org     |        1 |      0
 penny.neal@sakilacustomer.org       |        1 |      0
 harry.arce@sakilacustomer.org       |        1 |      0
 nathan.runyon@sakilacustomer.org    |        1 |      0
 maurice.crawley@sakilacustomer.org  |        1 |      0
 christian.jung@sakilacustomer.org   |        1 |      0
 jimmie.eggleston@sakilacustomer.org |        1 |      0
 terrance.roush@sakilacustomer.org   |        1 |      0
(8 rows)

** QUERY **

SELECT
    email,
    store_id, 
    active
FROM
    customer
WHERE
    store_id = '1' AND active = 0;

--How much have these customers spent? (Use code from the previous query to

-- make a subquery or a CTE to solve this one.) 

*** ANSWER ***

 customer_id | total_paid_by_customer
-------------+------------------------
         124 |                  57.86
         271 |                  56.84
         368 |                 139.69
         406 |                 121.69
         482 |                 125.74
         534 |                  81.78
         558 |                 135.72
         592 |                 111.71
(8 rows)

*** QUERY ***


WITH inactivecustomer_store1 AS (

SELECT
    customer_id,
    email,
    store_id, 
    active
FROM
    customer
WHERE
    store_id = '1' AND active = 0
    )

SELECT 
    customer_id,
    SUM(payment.amount) as total_paid_by_customer

FROM
    payment INNER JOIN inactivecustomer_store1 USING(customer_id)

GROUP BY customer_id
ORDER BY customer_id;


