/*JAY FUENTES & MATTHEW REFSNIDER*/

/*NOTE: INCREASE LINESIZE AND PAGESIZE*/

SET LINESIZE 300
SET PAGESIZE 66

/*NOTE: SELECT ALL COLUMNS FROM VEHICLES_CI*/

COLUMN "VIN" FORMAT A17;
COLUMN "MAKE" FORMAT A8;
COLUMN "MODEL" FORMAT A11;
COLUMN "YEAR" FORMAT 9999;
COLUMN "COLOR" FORMAT A10;
COLUMN "DEALER" FORMAT A6;

SELECT vehicle_vin "VIN", vehicle_make "MAKE",
		vehicle_model "MODEL", vehicle_year "YEAR",
		vehicle_color "COLOR", vehicle_dealer_no "DEALER"
	FROM vehicles_ci;

/*NOTE: SELECT ALL COLUMNS FROM BILL_TOS_CI*/

COLUMN "BILL TO #" FORMAT 9999;
COLUMN "FIRST NAME" FORMAT A10;
COLUMN "LAST NAME" FORMAT A9;
COLUMN "STREET" FORMAT A17;
COLUMN "APT" FORMAT A7;
COLUMN "CITY" FORMAT A12;
COLUMN "STATE" FORMAT A5;
COLUMN "ZIP" FORMAT A5;

SELECT bill_to_no "BILL TO #", bill_to_first_name "FIRST NAME",
		bill_to_last_name "LAST NAME", bill_to_street_1 "STREET",
		bill_to_street_2 "APT", bill_to_city "CITY",
		bill_to_state "STATE", bill_to_zip "ZIP"
	FROM bill_tos_ci;

/*NOTE: SELECT ALL COLUMNS FROM ITEMS_CI*/

COLUMN "ITEM #" FORMAT 9999999999;
COLUMN "ITEM NAME" FORMAT A10;
COLUMN "DESCRIPTION" FORMAT A27;
COLUMN "UNIT PRICE" FORMAT $999.99;

SELECT item_no "ITEM #", item_name "ITEM NAME",
		item_description "DESCRIPTION", item_unit_price "UNIT PRICE"
	FROM items_ci;

/*NOTE: SELECT ALL COLUMNS FROM OWNERS_CI*/

COLUMN "VIN" FORMAT A17;
COLUMN "BILL TO #" FORMAT 9999;

SELECT vehicle_vin "VIN", bill_to_no "BILL TO #"
	FROM owners_ci;

/*NOTE: SELECT ALL COLUMNS FROM INVOICES_CI*/

COLUMN "INVOICE #" FORMAT 99999999;
COLUMN "DATE Y/M/D" FORMAT A10;
COLUMN "ODOMETER" FORMAT 9999999;
COLUMN "TAX" FORMAT $99.99;
COLUMN "PAYMENT" FORMAT $999.99;
COLUMN "BILL TO #" FORMAT 9999;
COLUMN "VIN" FORMAT A17;

SELECT invoice_no "INVOICE #", TO_CHAR(invoice_date, 'YY/MM/DD') "DATE Y/M/D",
		invoice_odometer "ODOMETER", invoice_tax "TAX",
		invoice_payment_cred "PAYMENT", bill_to_no "BILL TO #",
		vehicle_vin "VIN"
	FROM invoices_ci;

/*NOTE: SELECT ALL COLUMNS FROM ITEMS_SOLD_CI_CI*/

COLUMN "INVOICE #" FORMAT 99999999;
COLUMN "ITEM #" FORMAT 999999999999999;
COLUMN "ITEM QTY SOLD" FORMAT 9999;
COLUMN "UNIT PRICE" FORMAT $999,999.99;

SELECT invoice_no "INVOICE #", item_no "ITEM #",
		item_qty_sold "ITEM QTY SOLD", item_unit_price "UNIT PRICE"
	FROM items_sold_ci;

/*NOTE: SORT INVOICES_CI BY INVOICE_DATE IN ASCENDING ORDER*/

COLUMN "INVOICE #" FORMAT 99999999;
COLUMN "DATE Y/M/D" FORMAT A10;
COLUMN "ODOMETER" FORMAT 9999999;
COLUMN "TAX" FORMAT $99.99;
COLUMN "PAYMENT" FORMAT $999.99;
COLUMN "BILL TO #" FORMAT 9999;
COLUMN "VIN" FORMAT A17;

SELECT invoice_no "INVOICE #", TO_CHAR(invoice_date, 'YY/MM/DD') "DATE Y/M/D",
		invoice_odometer "ODOMETER", invoice_tax "TAX",
		invoice_payment_cred "PAYMENT", bill_to_no "BILL TO #",
		vehicle_vin "VIN"
	FROM invoices_ci
	ORDER BY "DATE Y/M/D" ASC;

/*NOTE: SORT ITEMS_SOLD_CI BY ITEM_QTY_SOLD IN DESCENDING ORDER*/

COLUMN "INVOICE #" FORMAT 99999999;
COLUMN "ITEM #" FORMAT 999999999999999;
COLUMN "ITEM QTY SOLD" FORMAT 9999;
COLUMN "UNIT PRICE" FORMAT $999,999.99;

SELECT invoice_no "INVOICE #", item_no "ITEM #",
		item_qty_sold "ITEM QTY SOLD", item_unit_price "UNIT PRICE"
	FROM items_sold_ci
	ORDER BY "ITEM QTY SOLD" DESC;

/*NOTE: SORT BILL_TOS_CI BY CITY THEN LAST_NAME IN ASCENDING ORDER*/

COLUMN "BILL TO #" FORMAT 9999;
COLUMN "FIRST NAME" FORMAT A10;
COLUMN "LAST NAME" FORMAT A15;
COLUMN "STREET" FORMAT A20;
COLUMN "APT" FORMAT A13;
COLUMN "CITY" FORMAT A15;
COLUMN "STATE" FORMAT A6;
COLUMN "ZIP" FORMAT A5;

SELECT bill_to_no "BILL TO #", bill_to_first_name "FIRST NAME",
		bill_to_last_name "LAST NAME", bill_to_street_1 "STREET",
		bill_to_street_2 "APT", bill_to_city "CITY",
		bill_to_state "STATE", bill_to_zip "ZIP"
	FROM bill_tos_ci
	ORDER BY "CITY", "LAST NAME" ASC;

/*NOTE: INVOICES BY INVOICE_NO THEN ITEM_UNIT_PRICE*/

COLUMN "INVOICE #" FORMAT 99999999;
COLUMN "ITEM #" FORMAT 999999999999999;
COLUMN "ITEM QTY SOLD" FORMAT 9999;
COLUMN "UNIT PRICE" FORMAT $999,999.99;

SELECT UNIQUE invoice_no "INVOICE #", item_no "ITEM #",
		item_qty_sold "ITEM QTY SOLD", item_unit_price "UNIT PRICE"
	FROM items_sold_ci
	ORDER BY "INVOICE #", "UNIT PRICE" DESC;

/*NOTE: SELECT ALL ITEMS WITH "FILTER" IN NAME*/

COLUMN "ITEM #" FORMAT 999999999999999;
COLUMN "ITEM NAME" FORMAT A13;
COLUMN "DESCRIPTION" FORMAT A30;
COLUMN "UNIT PRICE" FORMAT $999,999.99;

SELECT item_no "ITEM #", item_name "ITEM NAME",
		item_description "DESCRIPTION", item_unit_price "UNIT PRICE"
	FROM items_ci
	WHERE item_name LIKE '%FILTER%'
	ORDER BY "ITEM #";

/*NOTE: SELECT ITEMS SOLD 2 TIMES OR LESS GREATER THAN $20*/

COLUMN "INVOICE #" FORMAT 99999999;
COLUMN "ITEM #" FORMAT 999999999999999;
COLUMN "ITEM QTY SOLD" FORMAT 9999;
COLUMN "UNIT PRICE" FORMAT $999,999.99;

SELECT invoice_no "INVOICE #", item_no "ITEM #",
		item_qty_sold "ITEM QTY SOLD", item_unit_price "UNIT PRICE"
	FROM items_sold_ci
	WHERE item_qty_sold <= 2
	AND item_unit_price >= 20
	ORDER BY "UNIT PRICE" DESC, "ITEM QTY SOLD" DESC;

/*NOTE: SELECT BILL TO NO 8923*/

COLUMN "VIN" FORMAT A17;
COLUMN "BILL TO #" FORMAT 9999;

SELECT vehicle_vin "VIN", bill_to_no "BILL TO #"
	FROM owners_ci
	WHERE bill_to_no = '8923'
	ORDER BY "VIN";

/*NOTE: SELECT ALL ITEMS IN $25-$199 RANGE*/

COLUMN "ITEM #" FORMAT 999999999999999;
COLUMN "ITEM NAME" FORMAT A13;
COLUMN "DESCRIPTION" FORMAT A30;
COLUMN "UNIT PRICE" FORMAT $999,999.99;

SELECT item_no "ITEM #", item_name "ITEM NAME",
		item_description "DESCRIPTION", item_unit_price "UNIT PRICE"
	FROM items_ci
	WHERE item_unit_price >= 25
	AND item_unit_price <= 199
	ORDER BY "ITEM #";

/*NOTE: INNER JOIN OF BILL_TOS_CI AND OWNERS_CI*/

COLUMN "BILL TO #" FORMAT 9999;
COLUMN "OWNER NAME" FORMAT A20;
OLUMN "VIN" FORMAT A18;

SELECT bill_tos_ci.bill_to_no "BILL TO #",
		bill_tos_ci.bill_to_first_name || ' ' || bill_tos_ci.bill_to_last_name "OWNER NAME",
		owners_ci.vehicle_vin "VIN"
	FROM bill_tos_ci
		INNER JOIN owners_ci
		ON bill_tos_ci.bill_to_no = owners_ci.bill_to_no
		ORDER BY "BILL TO #";

/*NOTE: OUTER JOIN OF ITEMS_CI AND ITEMS_SOLD_CI*/

COLUMN "ITEM #" FORMAT 999999999999999;
COLUMN "ITEM NAME" FORMAT A13;
COLUMN "DESCRIPTION" FORMAT A30;
COLUMN "UNIT PRICE" FORMAT $999,999.99;
COLUMN "INVOICE #" FORMAT 99999999;

SELECT items_ci.item_no "ITEM #", items_ci.item_name "ITEM NAME",
		items_ci.item_description "DESCRIPTION", items_ci.item_unit_price "UNIT PRICE",
		items_sold_ci.invoice_no "INVOICE #"
	FROM items_ci LEFT OUTER JOIN items_sold_ci
	ON items_ci.item_unit_price = 7.9
	ORDER BY "ITEM #", "INVOICE #";

/*NOTE: INNER JOIN OF BILL_TOS_CI, VEHICLES_CI, INVOICES_CI, AND ITEMS_SOLD_CI*/

COLUMN "OWNER NAME" FORMAT A15;
COLUMN "INVOICE #" FORMAT 99999999;
COLUMN "DATE Y/M/D" FORMAT A10;
COLUMN "ITEM #" FORMAT 999999999999999;
COLUMN "UNIT PRICE" FORMAT $999,999.99;
COLUMN "ITEM QTY SOLD" FORMAT 9999;
COLUMN "YEAR" FORMAT 9999;
COLUMN "MAKE" FORMAT A8;
COLUMN "MODEL" FORMAT A11;
COLUMN "VIN" FORMAT A17;
COLUMN "ODOMETER" FORMAT 99999999;

SELECT bill_tos_ci.bill_to_first_name || ' ' || bill_tos_ci.bill_to_last_name "OWNER NAME",
		invoices_ci.invoice_no "INVOICE #", TO_CHAR(invoice_date, 'YY/MM/DD') "DATE Y/M/D",
		items_sold_ci.item_no "ITEM #", items_sold_ci.item_unit_price "UNIT PRICE",
		items_sold_ci.item_qty_sold "ITEM QTY SOLD", vehicles_ci.vehicle_year "YEAR",
		vehicles_ci.vehicle_make "MAKE", vehicles_ci.vehicle_model "MODEL"
	FROM invoices_ci
	INNER JOIN vehicles_ci
		ON invoices_ci.vehicle_vin = vehicles_ci.vehicle_vin
	INNER JOIN bill_tos_ci
		ON invoices_ci.bill_to_no = bill_tos_ci.bill_to_no
	INNER JOIN items_sold_ci
		ON invoices_ci.invoice_no = items_sold_ci.invoice_no
	ORDER BY "OWNER NAME", "INVOICE #" DESC, "ITEM #" DESC;

/*NOTE: SUBTRACT SOLD ITEMS FROM TOTAL ITEMS*/

COLUMN "UNSOLD ITEMS" FORMAT A12;

SELECT item_no "UNSOLD ITEMS"
	FROM items_ci
	MINUS
	SELECT item_no
	FROM items_sold_ci;

/*NOTE: CALCULATE INVOICE TOTALS*/

COLUMN "INVOICE #" FORMAT 99999999;
COLUMN "INVOICE TOTAL" FORMAT $9999.99;

SELECT invoice_no "INVOICE #",
		SUM((((item_qty_sold * item_unit_price) + invoice_tax) - NVL(invoice_payment_cred, 0))) "INVOICE TOTAL"
	FROM items_sold_ci JOIN invoices_ci USING (invoice_no)
	GROUP BY (invoice_no)
	ORDER BY invoice_no;

/*NOTE: COUNT INVOICES*/

COLUMN "TOTAL INVOICES" FORMAT 99999

SELECT COUNT(*) "TOTAL INVOICES"
	FROM invoices_ci;

/*NOTE: COUNT ITEMS*/

COLUMN "TOTAL ITEMS" FORMAT 99999

SELECT COUNT(*) "TOTAL ITEMS"
	FROM items_ci;

/*NOTE: CALCULATE MAX ITEM_UNIT_PRICE*/

COLUMN "ITEM #" FORMAT 9999999999;
COLUMN "ITEM NAME" FORMAT A10;
COLUMN "DESCRIPTION" FORMAT A27;
COLUMN "UNIT PRICE" FORMAT $999,999.99;

SELECT MAX(item_unit_price) "MAX UNIT PRICE"
	FROM items_ci;

/*NOTE: CALCULATE MIN ITEM_UNIT_PRICE*/

COLUMN "ITEM #" FORMAT 9999999999;
COLUMN "ITEM NAME" FORMAT A10;
COLUMN "DESCRIPTION" FORMAT A27;
COLUMN "UNIT PRICE" FORMAT $999,999.99;

SELECT MIN(item_unit_price) "MIN UNIT PRICE"
	FROM items_ci;
