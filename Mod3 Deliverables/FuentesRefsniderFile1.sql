/*NOTE: JAY FUENTES AND MATT REFSNIDER*/

/*NOTE: START CREATE TABLE STATEMENTS*/

/*NOTE: CREATE TABLES*/

CREATE TABLE vehicles_ci
(
   vehicle_vin  VARCHAR2(17)
      CONSTRAINT vcle_vehicle_vin_pk PRIMARY KEY,
   vehicle_make  VARCHAR2(20)
      CONSTRAINT vcle_vehicle_make_nn NOT NULL,
   vehicle_model VARCHAR2(20)
      CONSTRAINT vcle_vehicle_model_nn NOT NULL,
   vehicle_year  NUMBER(4)
      CONSTRAINT vcle_vehicle_year_nn NOT NULL,
   vehicle_color VARCHAR2(20)
      CONSTRAINT vcle_vehicle_color_nn NOT NULL,
   vehicle_dealer_no CHAR(5)
);

CREATE TABLE bill_tos_ci
(
   bill_to_no   NUMBER(5)
      CONSTRAINT bill_bill_to_no_pk PRIMARY KEY,
   bill_to_first_name VARCHAR2(20)
      CONSTRAINT bill_bill_to_first_name_nn NOT NULL,
   bill_to_last_name VARCHAR2(20)
      CONSTRAINT bill_bill_to_last_name_nn NOT NULL,
   bill_to_street_1  VARCHAR2(30)
      CONSTRAINT bill_bill_to_street_1_nn NOT NULL,
   bill_to_street_2  VARCHAR2(15),
   bill_to_city   VARCHAR2(30)
      CONSTRAINT bill_bill_to_city_nn NOT NULL,
   bill_to_state CHAR(2)
      CONSTRAINT bill_bill_to_state_nn NOT NULL,
   bill_to_zip   CHAR(5)
      CONSTRAINT bill_bill_to_zip_nn NOT NULL
);

CREATE TABLE items_ci
(
   item_no VARCHAR2(10)
      CONSTRAINT item_item_no_pk PRIMARY KEY,
   item_name VARCHAR2(20)
      CONSTRAINT item_item_name_nn NOT NULL,
   item_description VARCHAR2(30)
      CONSTRAINT item_item_description_nn NOT NULL,
   item_unit_price  NUMBER(6,2)
      CONSTRAINT item_item_unit_price_nn NOT NULL
);

CREATE TABLE owners_ci
(
   vehicle_vin  VARCHAR2(17),
   bill_to_no  NUMBER(5),
      CONSTRAINT owners_vcle_vin_bill_to_no_pk
         PRIMARY KEY (vehicle_vin,bill_to_no),
      CONSTRAINT owners_vehicle_vin_fk
         FOREIGN KEY (vehicle_vin)
         REFERENCES vehicles_ci(vehicle_vin),
      CONSTRAINT owners_bill_to_no_fk
         FOREIGN KEY (bill_to_no)
         REFERENCES bill_tos_ci(bill_to_no)
);

CREATE TABLE invoices_ci
(
   invoice_no  NUMBER(5)
      CONSTRAINT invs_invoice_no_pk PRIMARY KEY,
   invoice_date DATE
      CONSTRAINT invs_inv_date_nn NOT NULL,
   invoice_odometer  NUMBER(6)
      CONSTRAINT invs_inv_odometer_nn NOT NULL,
   invoice_tax  NUMBER(4,2)
      CONSTRAINT invs_inv_tax_nn NOT NULL,
   invoice_payment_cred  NUMBER(5,2),
   bill_to_no  NUMBER(5)
      CONSTRAINT invs_bill_to_no_nn NOT NULL,
   vehicle_vin  VARCHAR2(17)
      CONSTRAINT invs_vcle_vehicle_vin_nn NOT NULL,
      CONSTRAINT invs_bill_to_no_vin_fk
         FOREIGN KEY (bill_to_no,vehicle_vin)
         REFERENCES owners_ci(bill_to_no,vehicle_vin)
   );

CREATE TABLE items_sold_ci
(
   invoice_no  NUMBER(5),
   item_no  VARCHAR2(10),
   item_qty_sold  NUMBER(2)
      CONSTRAINT items_sold_item_qty_sold_nn  NOT NULL,
   item_unit_price NUMBER(6,2)
      CONSTRAINT items_sold_item_unit_price_nn
         NOT NULL,
   CONSTRAINT items_sold_inv_no_item_no_pk
      PRIMARY KEY (invoice_no,item_no),
   CONSTRAINT items_sold_invoice_no_fk
      FOREIGN KEY (invoice_no)
      REFERENCES invoices_ci(invoice_no),
   CONSTRAINT prods_item_no_fk
      FOREIGN KEY (item_no)
      REFERENCES items_ci(item_no)
);

/*NOTE: TO GET INFORMATION ABOUT TABLES*/

DESCRIBE vehicles_ci
DESCRIBE bill_tos_ci
DESCRIBE items_ci
DESCRIBE owners_ci
DESCRIBE invoices_ci
DESCRIBE items_sold_ci

/*NOTE: TO GET INFORMATION ABOUT CONSTRAINTS*/

COLUMN constraint_name FORMAT A32;
COLUMN column_name FORMAT A20;
COLUMN table_name FORMAT A15;
SELECT constraint_name, column_name,table_name
FROM user_cons_columns
WHERE constraint_name NOT LIKE 'BIN%'
ORDER BY constraint_name;

/*NOTE: END CREATE TABLE STATEMENTS*/

/*NOTE: START CREATE SEQUENCE STATEMENTS*/

/*NOTE: CREATE SEQUENCES*/

CREATE SEQUENCE bill_tos_bill_to_no_seq
	START WITH 8923
	INCREMENT BY 1
	MAXVALUE 99999
	NOCYCLE
	NOCACHE;

CREATE SEQUENCE items_item_no_seq
	START WITH 1122334455
	INCREMENT BY 1
	MAXVALUE 9999999999
	NOCYCLE
	NOCACHE;

CREATE SEQUENCE invoices_invoice_no_seq
	START WITH 25333
	INCREMENT BY 1
	MAXVALUE 99999
	NOCYCLE
	NOCACHE;

/*NOTE: TO GET INFORMATION ABOUT SEQUENCES*/

SELECT sequence_name, increment_by
FROM user_sequences;

/*NOTE: END CREATE SEQUENCE STATEMENTS*/

/*NOTE: START INSERT STATEMENTS*/

/*NOTE: INSERT DATA TO VEHICLES_CI TABLE*/

/*NOTE: INSERT DATA TO VEHICLES_CI TABLE*/

INSERT INTO vehicles_ci
(
	vehicle_vin,
	vehicle_make,
	vehicle_model,
	vehicle_year,
	vehicle_color,
	vehicle_dealer_no
)
VALUES
(
	'121V5G1H221457H47',
	'HONDA',
	'SHADOW1100',
	1985,
	'BLACK',
	32582
);

INSERT INTO vehicles_ci
(
	vehicle_vin,
	vehicle_make,
	vehicle_model,
	vehicle_year,
	vehicle_color,
	vehicle_dealer_no
)
VALUES
(
	'4T4BF3EK6BR115086',
	'HARLEY',
	'RAVEN2000',
	2018,
	'LASER BLUE',
	45447
);

INSERT INTO vehicles_ci
(
	vehicle_vin,
	vehicle_make,
	vehicle_model,
	vehicle_year,
	vehicle_color,
	vehicle_dealer_no
)
VALUES
(
	'2GBHG31MXD4127143',
	'SUZUKI',
	'NINJA1000',
	2001,
	'WHITE',
	12258
);

INSERT INTO vehicles_ci
(
	vehicle_vin,
	vehicle_make,
	vehicle_model,
	vehicle_year,
	vehicle_color,
	vehicle_dealer_no
)
VALUES
(
	'1FUBCYCS35HN42268',
	'KAWASAKI',
	'ROADSTER788',
	2016,
	'BLACK',
	58445
);

INSERT INTO vehicles_ci
(
	vehicle_vin,
	vehicle_make,
	vehicle_model,
	vehicle_year,
	vehicle_color,
	vehicle_dealer_no
)
VALUES
(
	'1C4GJWAG7CL176718',
	'HONDA',
	'STREAK1',
	2009,
	'BLUE',
	NULL
);

/*NOTE: INSERT DATA TO BILL_TO_CI TABLE*/

INSERT INTO bill_tos_ci
(
	bill_to_no,
	bill_to_first_name,
	bill_to_last_name,
	bill_to_street_1,
	bill_to_street_2,
	bill_to_city,
	bill_to_state,
	bill_to_zip
)
VALUES
(
	bill_tos_bill_to_no_seq.NEXTVAL,
	'Yonnys',
	'Mendez',
	'4038 Park Ln',
	'A',
	'Palm Springs',
	'FL',
	33406
);

INSERT INTO bill_tos_ci
(
	bill_to_no,
	bill_to_first_name,
	bill_to_last_name,
	bill_to_street_1,
	bill_to_street_2,
	bill_to_city,
	bill_to_state,
	bill_to_zip
)
VALUES
(
	bill_tos_bill_to_no_seq.NEXTVAL,
	'Jon',
	'McArthur',
	'4039 Saturn Blvd',
	NULL,
	'Palm Springs',
	'FL',
	33406
);

INSERT INTO bill_tos_ci
(
	bill_to_no,
	bill_to_first_name,
	bill_to_last_name,
	bill_to_street_1,
	bill_to_street_2,
	bill_to_city,
	bill_to_state,
	bill_to_zip
)
VALUES
(
	bill_tos_bill_to_no_seq.NEXTVAL,
	'Travis',
	'Scott',
	'2301 S Ocean Blvd',
	'Suite 1',
	'Boca Raton',
	'FL',
	33487
);

INSERT INTO bill_tos_ci
(
	bill_to_no,
	bill_to_first_name,
	bill_to_last_name,
	bill_to_street_1,
	bill_to_street_2,
	bill_to_city,
	bill_to_state,
	bill_to_zip
)
VALUES
(
	bill_tos_bill_to_no_seq.NEXTVAL,
	'Jan',
	'Mendez',
	'123 Lane Street',
	NULL,
	'Delray Beach',
	'FL',
	33481
);

/*NOTE: INSERT DATA TO ITEMS_CI TABLE*/

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'MASTER',
	'MASTER CYLINDER SIGHT GLASS',
	3.99
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'CARB KIT',
	'CARBURETOR KIT',
	7.9
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'PLUGS',
	'SPARK PLUGS',
	4.05
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'BTZ14S',
	'BTZ14S BATTERY 78-1383',
	88.95
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	23-1006,
	'10 MM FUEL FILTER',
	25.15
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'AIR FILTER',
	'AIR CLEANER 17215-MG8-771',
	28.53
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'OIL FILTER',
	'FILTER GASKET',
	20.1
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'WHEEL',
	'STEERING WHEEL',
	149.99
);

/*NOTE: INSERT DATA TO OWNERS_CI TABLE*/

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'121V5G1H221457H47',
	8923
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'4T4BF3EK6BR115086',
	8924
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'2GBHG31MXD4127143',
	8925
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'1FUBCYCS35HN42268',
	8926
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'1C4GJWAG7CL176718',
	8923
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'121V5G1H221457H47',
	8924
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'4T4BF3EK6BR115086',
	8925
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'2GBHG31MXD4127143',
	8926
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'1C4GJWAG7CL176718',
	8926
);

/*NOTE: INSERT DATA TO INVOICES_CI TABLE*/

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2017-10-11',
	88000,
	5.93,
	7.00,
	8923,
	'121V5G1H221457H47'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2017-11-1',
	35000,
	22.00,
	12.00,
	8924,
	'4T4BF3EK6BR115086'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2017-12-3',
	60000,
	7.80,
	2.00,
	8925,
	'2GBHG31MXD4127143'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2017-12-22',
	15000,
	21.10,
	NULL,
	8926,
	'1FUBCYCS35HN42268'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2017-12-28',
	17000,
	22.30,
	2.00,
	8923,
	'1C4GJWAG7CL176718'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-1-2',
	19000,
	21.10,
	8.00,
	8924,
	'121V5G1H221457H47'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-1-5',
	25000,
	52.00,
	12.00,
	8925,
	'4T4BF3EK6BR115086'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-1-9',
	26000,
	60.00,
	15.50,
	8926,
	'2GBHG31MXD4127143'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-1-20',
	88000,
	60.00,
	18.50,
	8926,
	'1C4GJWAG7CL176718'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-2-1',
	90,
	52.00,
	12.20,
	8925,
	'4T4BF3EK6BR115086'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-2-23',
	3000,
	61.50,
	11.20,
	8926,
	'2GBHG31MXD4127143'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-3-5',
	6000,
	65.00,
	12.00,
	8926,
	'1C4GJWAG7CL176718'
);

/*NOTE: INSERT DATA TO ITEMS_SOLD_CI TABLE*/

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25333,
	1122334455,
	2,
	3.99
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25334,
	1122334456,
	1,
	7.9
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25335,
	1122334457,
	2,
	4.05
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25336,
	1122334458,
	1,
	88.95
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25337,
	1122334459,
	1,
	25.15
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25338,
	1122334460,
	1,
	28.53
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25339,
	1122334455,
	1,
	3.99
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25340,
	1122334456,
	2,
	7.9
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25341,
	1122334457,
	2,
	4.05
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25342,
	1122334458,
	1,
	88.95
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25343,
	1122334459,
	1,
	25.15
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25344,
	1122334460,
	1,
	28.53
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25333,
	1122334460,
	1,
	28.53
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25334,
	1122334459,
	1,
	25.15
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25335,
	1122334458,
	4,
	88.95
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25336,
	1122334457,
	2,
	4.05
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25337,
	1122334456,
	1,
	7.9
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25338,
	1122334455,
	3,
	3.99
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25339,
	1122334460,
	1,
	28.53
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25340,
	1122334459,
	1,
	25.15
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25341,
	1122334458,
	2,
	88.95
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25342,
	1122334457,
	2,
	4.05
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25343,
	1122334456,
	2,
	7.9
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25344,
	1122334455,
	2,
	3.99
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25333,
	1122334458,
	1,
	88.95
);

/*NOTE: END INSERT STATEMENTS*/
