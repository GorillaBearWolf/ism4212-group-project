-----------------------------------------------

COLUMN "INVOICE #" FORMAT 99999999;
COLUMN "ITEM #" FORMAT 999999999999999;
COLUMN "ITEM QTY SOLD" FORMAT 9999;
COLUMN "UNIT PRICE" FORMAT $999,999.99;

SELECT invoice_no "INVOICE #", item_no "ITEM #",
		item_qty_sold "ITEM QTY SOLD", item_unit_price "UNIT PRICE"
	FROM items_sold_ci
	ORDER BY invoice_no;

-----------------------------------------------

COLUMN "INVOICE #" FORMAT 99999999;
COLUMN "ITEM #" FORMAT 999999999999999;
COLUMN "ITEM QTY SOLD" FORMAT 9999;
COLUMN "UNIT PRICE" FORMAT $999,999.99;

SELECT SUM(item_qty_sold * item_unit_price) "UNIT PRICE"
	FROM items_sold_ci
	GROUP BY (invoice_no)
	ORDER BY invoice_no;

-----------------------------------------------

COLUMN "INVOICE #" FORMAT 99999999;
COLUMN "INVOICE TOTAL" FORMAT $9999.99;

SELECT items_sold_ci.invoice_no "INVOICE #",
		SUM((items_sold_ci.item_qty_sold * items_sold_ci.item_unit_price), invoices_ci.invoice_tax, NVL(invoices_ci.invoice_payment_cred, 0)) "INVOICE TOTAL"
	FROM items_sold_ci
	INNER JOIN invoices_ci
	ON items_sold_ci.invoice_no = invoices_ci.invoice_no
	GROUP BY (items_sold_ci.invoice_no)
	ORDER BY items_sold_ci.invoice_no;

	-----------------------------------------------
