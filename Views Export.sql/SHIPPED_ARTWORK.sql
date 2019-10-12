--------------------------------------------------------
--  DDL for View SHIPPED_ARTWORK
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TAMOA"."SHIPPED_ARTWORK" ("TRANSACTION_ID", "SALE_DATE") AS 
  SELECT transaction_id,sale_date
FROM sale_transaction
WHERE delivery_method = 'Ship'
OR (delivery_method = 'Ship International')
;
