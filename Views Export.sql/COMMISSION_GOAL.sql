--------------------------------------------------------
--  DDL for View COMMISSION_GOAL
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TAMOA"."COMMISSION_GOAL" ("TRANSACTION_ID", "MONTH OF SALE", "SALES_TOTAL", "COMMISSION", "VAT") AS 
  SELECT transaction_id,EXTRACT(MONTH FROM TO_DATE(sale_date)) AS "MONTH OF SALE", sales_total, commission, vat
FROM sale_transaction
GROUP BY EXTRACT(MONTH FROM TO_DATE(sale_date)), TO_DATE(sale_date), sale_date, sales_total, transaction_id, 
commission, vat
HAVING SUM(sales_total) >= 10000
;
