 # Q1) #Find out the PG-13 rated comedy movies. DO NOT use the film_list table.

  select * from film where rating='pg-13' and film_id in (select film_id from film_category where category_id in(select category_id from category where category.name = 'comedy'));

