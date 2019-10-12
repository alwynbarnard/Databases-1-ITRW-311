--------------------------------------------------------
--  DDL for View ZERO_PROFIT_SALE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TAMOA"."ZERO_PROFIT_SALE" ("TRANSACTION_ID", "DELIVERY_METHOD", "SALES_TOTAL", "ARTWORK_ID") AS 
  SELECT s.transaction_id, s.delivery_method, s.sales_total, d.artwork_id
    FROM SALE_TRANSACTION s
    INNER JOIN SALE_TRANSACTION_DETAIL d
    ON (s.transaction_id = d.transaction_id)
    WHERE d.sales_price = s.sales_total
    AND s.commission = 0.0
;
