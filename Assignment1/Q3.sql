# Q3. Find out the list of customers from India who have rented sports movies.


select * from customer_list where country="india" and id in (select rental.customer_id from rental,inventory,film_list where rental.inventory_id=inventory.inventory_id and inventory.film_id=film_list.fid and film_list.category='sports');


output 


+-----+-------------------+------------------------------+----------+--------------+-----------------------+---------+--------+-----+
| ID  | name              | address                      | zip code | phone        | city                  | country | notes  | SID |
+-----+-------------------+------------------------------+----------+--------------+-----------------------+---------+--------+-----+
| 367 | ADAM GOOCH        | 230 Urawa Drive              | 2738     | 166898395731 | Adoni                 | India   | active |   1 |
| 297 | SHERRI RHODES     | 922 Vila Velha Loop          | 4085     | 510737228015 | Ahmadnagar            | India   | active |   1 |
| 175 | ANNETTE OLSON     | 431 Xiangtan Avenue          | 4854     | 230250973122 | Allappuzha (Alleppey) | India   | active |   1 |
| 225 | ARLENE HARVEY     | 1014 Loja Manor              | 66851    | 460795526514 | Ambattur              | India   | active |   1 |
| 534 | CHRISTIAN JUNG    | 949 Allende Lane             | 67521    | 122981120653 | Amroha                | India   |        |   1 |
| 379 | CARLOS COUGHLIN   | 97 Mogiljov Lane             | 89294    | 924815207181 | Bhavnagar             | India   | active |   1 |
| 209 | TONYA CHAPMAN     | 43 Dadu Avenue               | 4855     | 95666951770  | Bhilwara              | India   | active |   2 |
|  15 | HELEN HARRIS      | 419 Iligan Lane              | 72878    | 990911107354 | Bhopal                | India   | active |   1 |
| 468 | TIM CARY          | 1257 Guadalajara Street      | 33599    | 195337700615 | Bijapur               | India   | active |   1 |
| 167 | SALLY PIERCE      | 1540 Wroclaw Drive           | 62686    | 182363341674 | Chandrapur            | India   | active |   2 |
| 440 | BERNARD COLBY     | 495 Bhimavaram Lane          | 3        | 82088937724  | Dhule (Dhulia)        | India   | active |   1 |
| 121 | JOSEPHINE GOMEZ   | 211 Chiayi Drive             | 58186    | 665993880048 | Etawah                | India   | active |   1 |
| 192 | LAURIE LAWRENCE   | 9 San Miguel de Tucumn Manor | 90845    | 956188728558 | Firozabad             | India   | active |   1 |
| 117 | EDITH MCDONALD    | 1967 Sincelejo Place         | 73644    | 577812616052 | Gandhinagar           | India   | active |   1 |
| 370 | WAYNE TRUONG      | 1049 Matamoros Parkway       | 69640    | 960505250340 | Gulbarga              | India   | active |   2 |
| 186 | HOLLY FOX         | 435 0 Way                    | 74750    | 760171523969 | Haldia                | India   | active |   2 |
| 259 | LENA JENSEN       | 1027 Banjul Place            | 50390    | 538241037443 | Halisahar             | India   | active |   2 |
| 412 | ALLEN BUTTERFIELD | 791 Salinas Street           | 40509    | 129953030512 | Hoshiarpur            | India   | active |   2 |
| 136 | ANITA MORALES     | 788 Atinsk Street            | 81691    | 146497509724 | Hubli-Dharwad         | India   | active |   2 |
|  60 | MILDRED BAILEY    | 81 Hodeida Way               | 55561    | 250767749542 | Jaipur                | India   | active |   1 |
|  32 | AMY LOPEZ         | 176 Mandaluyong Place        | 65213    | 627705991774 | Jhansi                | India   | active |   1 |
| 224 | PEARL GARZA       | 60 Poos de Caldas Street     | 82338    | 963063788669 | Jodhpur               | India   | active |   2 |
| 274 | NAOMI JENNINGS    | 1884 Shikarpur Avenue        | 85548    | 959949395183 | Karnal                | India   | active |   1 |
| 419 | CHAD CARBONE      | 1948 Bayugan Parkway         | 60622    | 987306329957 | Katihar               | India   | active |   1 |
| 271 | PENNY NEAL        | 1675 Xiangfan Manor          | 11763    | 271149517630 | Kumbakonam            | India   |        |   1 |
| 316 | STEVEN CURLEY     | 651 Pathankot Loop           | 59811    | 139378397418 | Miraj                 | India   | active |   1 |
|  28 | CYNTHIA YOUNG     | 1425 Shikarpur Manor         | 65599    | 678220867005 | Munger (Monghyr)      | India   | active |   1 |
|  59 | CHERYL MURPHY     | 1213 Ranchi Parkway          | 94352    | 800024380485 | Mysore                | India   | active |   1 |
| 268 | NINA SOTO         | 1519 Ilorin Place            | 49298    | 357445645426 | Palghat (Palakkad)    | India   | active |   1 |
| 300 | JOHN FARNSWORTH   | 41 El Alto Parkway           | 56883    | 51917807050  | Parbhani              | India   | active |   1 |
|  95 | PAULA BRYANT      | 1697 Tanauan Lane            | 22870    | 4764773857   | Pathankot             | India   | active |   2 |
| 296 | RAMONA HALE       | 951 Stara Zagora Manor       | 98573    | 429925609431 | Patiala               | India   | active |   2 |
| 421 | LEE HAWKS         | 1661 Abha Drive              | 14400    | 270456873752 | Pudukkottai           | India   | active |   1 |
| 135 | JUANITA MASON     | 943 Johannesburg Avenue      | 5892     | 90921003005  | Pune                  | India   | active |   2 |
| 426 | BRADLEY MOTLEY    | 1596 Acua Parkway            | 70425    | 157133457169 | Purnea (Purnia)       | India   | active |   1 |
|  78 | LORI WOOD         | 936 Salzburg Lane            | 96709    | 875756771675 | Rae Bareli            | India   | active |   1 |
| 554 | DWAYNE OLVERA     | 1447 Imus Place              | 12905    | 62127829280  | Rajkot                | India   | active |   1 |
| 336 | JOSHUA MARK       | 1920 Weifang Avenue          | 15643    | 869507847714 | Rampur                | India   | active |   1 |
| 358 | SAMUEL MARLOW     | 604 Bern Place               | 5373     | 620719383725 | Ranchi                | India   | active |   2 |
| 356 | GERALD FULTZ      | 45 Aparecida de Goinia Place | 7431     | 650496654258 | Satna                 | India   | active |   2 |
|  68 | NICOLE PETERSON   | 57 Arlington Manor           | 48960    | 990214419142 | Shivapuri             | India   | active |   1 |
| 502 | BRETT CORNWELL    | 1197 Sokoto Boulevard        | 87687    | 868602816371 | Siliguri (Shiliguri)  | India   | active |   1 |
| 170 | BEATRICE ARNOLD   | 1877 Ezhou Lane              | 63337    | 264541743403 | Udaipur               | India   | active |   1 |
| 446 | THEODORE CULP     | 1704 Tambaram Manor          | 2834     | 39463554936  | Uluberia              | India   |        |   2 |
| 231 | GEORGIA JACOBS    | 954 Kimchon Place            | 42420    | 541327526474 | Uttarpara-Kotrung     | India   | active |   1 |
| 403 | MIKE WAY          | 990 Etawah Loop              | 79940    | 206169448769 | Valparai              | India   | active |   1 |
| 123 | SHANNON FREEMAN   | 117 Boa Vista Way            | 6804     | 677976133614 | Varanasi (Benares)    | India   | active |   2 |
| 508 | MILTON HOWLAND    | 758 Korolev Parkway          | 75474    | 441628280920 | Vijayawada            | India   | active |   2 |
|  12 | NANCY THOMAS      | 808 Bhopal Manor             | 10672    | 465887807014 | Yamuna Nagar          | India   | active |   1 |
+-----+-------------------+------------------------------+----------+--------------+-----------------------+---------+--------+-----+
49 rows in set (0.02 sec)


