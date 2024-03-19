CREATE TABLE salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER,
    customer_id INTEGER,
    car_id INTEGER,
    invoice_date TIMESTAMP,
    invoice_amount INTEGER,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(100),
    phone_num VARCHAR(50)
);

CREATE TABLE car (
    car_id SERIAL PRIMARY KEY,
    vehicle_id_num SERIAL,
    make VARCHAR(50),
    model VARCHAR(50),
    year INTEGER
);

CREATE TABLE service_ticket (
    service_ticket_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    service_ticket_amount VARCHAR(50),
    services_rendered VARCHAR(100),
    service_time TIMESTAMP,
    customer_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE service_history (
    service_history_id SERIAL PRIMARY KEY,
    mechanic_id INTEGER,
    service_ticket_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id)
);

CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
