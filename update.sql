Update¶
Find all customers with fax numbers and set those numbers to null.

select fax from customer

UPDATE customer
SET fax = null

select fax from customer

Find all customers with no company (null) and set their company to “Self”.

UPDATE customer
SET company = 'Self'
WHERE company = null;

Find the customer Julia Barnett and change her last name to Thompson.

UPDATE customer
SET last_name = 'Thompson'
WHERE  customer_id = 28;

select * from customer 
where customer_id = 28

Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4.

select * from customer
where email = 'luisrojas@yahoo.cl';

UPDATE customer
SET support_rep_id = 4
WHERE  customer_id = 57;

select * from customer
where customer_id = 57


Find all tracks that are the genre Metal and have no composer. 
Set the composer to “The darkness around us”.

--select * from track
--where composer is null

Update track
set composer = 'The darkness around us'
where genre_id in(
  select genre_id from genre where composer is null and name ='Metal')

Refresh your page to remove all database changes.