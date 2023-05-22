-- Lab | SQL - Lab 3.01
-- Activity 1
-- 1 question - Drop column picture from staff.
USE sakila;
ALTER TABLE staff
DROP COLUMN picture;
-- 2 question - A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
INSERT INTO staff(first_name,last_name,email, store_id, address_id, username) 
VALUES
("Tammy","Sanders","TAMMY.SANDERS@sakilacustomer.org","2", "5", "Tammy");
SELECT * from sakila.staff;
-- 3 question - Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information.
-- customer_id = 130
-- film_id = 1
-- store_id = 1
-- staff_id = 1
-- inventory_id = 1,2,3,4
SELECT inventory_id FROM sakila.inventory
where film_id = "1" AND store_id= "1";

INSERT INTO rental(rental_date,inventory_id,customer_id,staff_id) 
VALUES
("2023-05-22","3","130", "1");

SELECT * FROM sakila.rental;

-- Activity 2
-- 1 question - 3 improvements for Sakila DB:
-- First improvement: Add "category" table into "film_category" table
-- Second improvement: Add "actor" table" into "film_actor" table
-- Third improvement: Add "language" table into "film" table
 