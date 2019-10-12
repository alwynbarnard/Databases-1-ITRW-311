--------------------------------------------------------
--  DDL for View NET_SALES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TAMOA"."NET_SALES" ("TRANSACTION_ID", "Total Commission", "Total VAT", "Total Sales", "Net sales") AS 
  SELECT transaction_id, SUM(commission) AS "Total Commission", SUM(vat) AS "Total VAT" , SUM(sales_total) AS "Total Sales", 
TO_CHAR(SUM(sales_total)-SUM(commission)-SUM(vat),'L99,999.00') AS "Net sales"
FROM sale_transaction
WHERE TO_CHAR(sale_date, 'DD') = TO_CHAR(SYSDATE,'DD') 
GROUP BY transaction_id
;
