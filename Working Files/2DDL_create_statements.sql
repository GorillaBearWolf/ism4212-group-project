/*NOTE: Pull request test*/

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
