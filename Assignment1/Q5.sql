# Q5) Find out the number of movies in which “SEAN WILLIAMS” acted.


select count(*) as 'Sean williams movies' from film_list where actors like '%SEAN WILLIAMS%';

output: 

+----------------------+
| Sean williams movies |
+----------------------+
|                   26 |
+----------------------+
1 row in set (0.05 sec)
