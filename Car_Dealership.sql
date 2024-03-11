CREATE TABLE "salesperson" (
  "salesperson_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  PRIMARY KEY ("salesperson_id")
);

CREATE TABLE "invoice" (
  "invoice_id" SERIAL,
  "salesperson_id" INTEGER,
  "customer_id" INTEGER,
  "car_id" INTEGER,
  "invoice_date" TIMESTAMP,
  "invoice_amount" INTEGER,
  PRIMARY KEY ("invoice_id")
);

CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "address" VARCHAR(100),
  "phone_num" VARCHAR(50),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "car" (
  "car_id" SERIAL,
  "vehicle_id_num" SERIAL,
  "make" VARCHAR(50),
  "model" VARCHAR(50),
  "year" INTEGER,
  PRIMARY KEY ("car_id")
);


CREATE TABLE "service_ticket" (
  "service_ticket_id" SERIAL,
  "car_id" INTEGER,
  "service_ticket_amount" VARCHAR(50),
  "services_rendered" VARCHAR(100),
  "service_time" TIMESTAMP,
  "customer_id" INTEGER,
  PRIMARY KEY ("service_ticket_id")
);

CREATE TABLE "service_history" (
  "service_history_id" SERIAL,
  "mechanic_id" INTEGER,
  "service_ticket_id" INTEGER,
  PRIMARY KEY ("service_history_id")
);

CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  PRIMARY KEY ("mechanic_id")
);

