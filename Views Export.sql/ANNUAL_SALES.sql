--------------------------------------------------------
--  DDL for View ANNUAL_SALES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TAMOA"."ANNUAL_SALES" ("TRANSACTION_ID", "SALE_DATE", "SALES_TOTAL", "COMMISSION", "VAT", "CLIENT_ID", "DELIVERY_METHOD") AS 
  SELECT transaction_id,sale_date, sales_total, commission, vat, client_id, delivery_method
FROM sale_transaction
WHERE EXTRACT(YEAR FROM sale_date) 
BETWEEN TRUNC(Extract(YEAR FROM SYSDATE)) AND ROUND(Extract(YEAR FROM SYSDATE))
;
