# Q2) Find out the top 3 rented horror movies.

select title, count(title) from film_list,inventory,rental where film_list.category='horror' and film_list.fid=inventory.film_id and inventory.inventory_id=rental.inventory_id group by title limit 3;
+-------------
output
-----+--------------+
| title            | count(title) |
+------------------+--------------+
| ACE GOLDFINGER   |            7 |
| AFFAIR PREJUDICE |           23 |
| AIRPORT POLLOCK  |           18 |
+------------------+--------------+
