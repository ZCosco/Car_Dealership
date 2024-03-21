-- Insert data for salesperson table
INSERT INTO salesperson (
	salesperson_id,
	first_name,
	last_name
) VALUES (
	1,
	'Ronald',
	'McDonald'
);

INSERT INTO salesperson (
	salesperson_id,
	first_name,
	last_name
) VALUES (
	2,
	'LeBron',
	'James'
);

INSERT INTO salesperson (
	salesperson_id,
	first_name,
	last_name
) VALUES (
	3,
	'Luka',
	'Doncic'
);

-- Insert data for car table
INSERT INTO car (
	car_id,
	vehicle_id_num,
	make,
	model,
	year
) VALUES (
	1,
	'778877',
	'Tesla',
	'Model S',
	2019
);

INSERT INTO car (
	car_id,
	vehicle_id_num,
	make,
	model,
	year
) VALUES (
	2,
	'111222',
	'Chevy',
	'Malibu',
	2013
);

INSERT INTO car (
	car_id,
	vehicle_id_num,
	make,
	model,
	year
) VALUES (
	3,
	'998844',
	'Honda',
	'Civic Sport',
	2024
);

-- Insert data for customer table
INSERT INTO customer (
	customer_id,
	first_name,
	last_name,
	address,
	phone_num
) VALUES (
	1,
	'Zachariah',
	'Coscarart',
	'943 East Ermina Ave',
	'(509)379-7430'
);

INSERT INTO customer (
	customer_id,
	first_name,
	last_name,
	address,
	phone_num
) VALUES (
	2,
	'Chad',
	'Ocho-Cinco',
	'Cincy Ave',
	'(858)585-8585'
);

INSERT INTO customer (
	customer_id,
	first_name,
	last_name,
	address,
	phone_num
) VALUES (
	3,
	'Charlie',
	'Brown',
	'I forgot the name of the town but tell Snoopy hi for me ',
	'(173)817-3817'
);


select * from car

select * from salesperson

select * from customer 


-- Stored Functions 

DROP PROCEDURE IF EXISTS addNewPhoneNumber(integer, VARCHAR);

CREATE OR REPLACE PROCEDURE addNewPhoneNumber(customer_id_param integer, new_phone_number VARCHAR(50))
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE customer 
    SET phone_num = new_phone_number
    WHERE customer.customer_id = customer_id_param;
END;
$$;

CALL addNewPhoneNumber(1, '(333)333-3333');

CREATE or REPLACE FUNCTION add_salesperson(salesperson_id_C INTEGER, first_name_C VARCHAR(50), last_name_C VARCHAR(50))
RETURNS VOID
as $MAIN$
BEGIN
	INSERT INTO salesperson(salesperson_id, first_name, last_name)
	VALUES(salesperson_id_C, first_name_C, last_name_C);
END;
$MAIN$
LANGUAGE plpgsql;



SELECT add_salesperson(4, 'Sir', 'Mix-a-Lot');