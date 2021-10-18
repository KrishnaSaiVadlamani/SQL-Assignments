# Q4) # Find out the list of customers from Canada who have rented “NICK WAHLBERG” movies.

select * from customer_list where country='canada' and id in(select rental.customer_id from rental,inventory,film_actor, actor where rental.inventory_id=inventory.inventory_id and inventory.film_id=film_actor.film_id and film_actor.actor_id=actor.actor_id and actor.first_name ='nick' and actor.last_name='wahlberg');

output: 


+-----+-------------------+--------------------+----------+--------------+---------+---------+--------+-----+
| ID  | name              | address            | zip code | phone        | city    | country | notes  | SID |
+-----+-------------------+--------------------+----------+--------------+---------+---------+--------+-----+
| 463 | DARRELL POWER     | 1844 Usak Avenue   | 84461    | 164414772677 | Halifax | Canada  | active |   2 |
| 189 | LORETTA CARPENTER | 891 Novi Sad Manor | 5379     | 247646995453 | Oshawa  | Canada  | active |   1 |
+-----+-------------------+--------------------+----------+--------------+---------+---------+--------+-----+
2 rows in set (0.01 sec)

