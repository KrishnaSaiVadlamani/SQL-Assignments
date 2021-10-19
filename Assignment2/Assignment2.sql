#Q1) Find out the number of documentaries with deleted scenes.

select count(*) from film inner join film_category on film_category.film_id=film.film_id inner join category on category.category_id=film_category.category_id where category.name="Documentary" and film.special_features like "%Deleted Scenes%";
+----------+
| count(*) |
+----------+
|       34 |
+----------+
1 row in set (0.00 sec)


# Q2) Find out the number of sci-fi movies rented by the store managed by Jon Stephens.

select distinct count(*) from film_category inner join category on category.category_id=film_category.category_id inner join inventory on inventory.film_id=dilm_category.film_id inner join store on inventory.store_id=store.store_id inner join staff on staff.staff_id=store.manager_staff_id where category.name="sci-fi" and staff.first_name="jon" and staff.last_name="stephens";
ERROR 1054 (42S22): Unknown column 'dilm_category.film_id' in 'on clause'
mysql> select distinct count(*) from film_category inner join category on category.category_id=film_category.category_id inner join inventory on inventory.film_id=film_category.film_id inner join store on inventory.store_id=store.store_id inner join staff on staff.staff_id=store.manager_staff_id where category.name="sci-fi" and staff.first_name="jon" and staff.last_name="stephens";
+----------+
| count(*) |
+----------+
|      163 |
+----------+
1 row in set (0.00 sec)


# Q3) Find out the total sales from Animation movies

select total_sales from sales_by_film_category where category="Animation";
+-------------+
| total_sales |
+-------------+
|     4656.30 |
+-------------+
1 row in set (0.02 sec)

# Q4) Find out the top 3 rented category of movies by “PATRICIA JOHNSON”.

select category.name from customer inner join rental on rental.customer_id=customer.customer_id inner join inventory on inventory.inventory_id=rental.inventory_id inner join film_category on film_category.film_id=inventory.film_id inner join category on category.category_id=film_category.category_id where customer.first_name="PATRICIA" and customer.last_name="JOHNSON" group by category.name order by count(customer.customer_id) desc limit 3;
+-----------+
| name      |
+-----------+
| Sports    |
| Classics  |
| Animation |
+-----------+
3 rows in set (0.00 sec)

# Q5) Find out the number of R rated movies rented by “SUSAN WILSON”.

select count(*) as "R rated movies rented by Susan wilson" from rental inner join customer on customer.customer_id=rental.customer_id and customer.first_name="susan" and customer.last_name="wilson" inner join inventory on inventory.inventory_id=rental.inventory_id inner join film on film.film_id=inventory.film_id and film.rating="R";
+---------------------------------------+
| R rated movies rented by Susan wilson |
+---------------------------------------+
|                                     3 |
+---------------------------------------+
1 row in set (0.00 sec)


