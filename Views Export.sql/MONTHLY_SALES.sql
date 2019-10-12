--------------------------------------------------------
--  DDL for View MONTHLY_SALES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TAMOA"."MONTHLY_SALES" ("TRANSACTION_ID", "ARTWORK_ID", "SALE_DATE", "ARTWORK_TITLE", "COLLECTION_NAME", "Sales Price") AS 
  SELECT s.transaction_id, a.artwork_id, t.sale_date, a.artwork_title, c.collection_name, 
            TO_CHAR(s.sales_price,'L99,999.00') AS "Sales Price"    
    FROM SALE_TRANSACTION_DETAIL s
    INNER JOIN SALE_TRANSACTION t
    ON (s.transaction_id = t.transaction_id)
    INNER JOIN ARTWORK a
    ON (s.artwork_id = a.artwork_id)
    INNER JOIN COLLECTION c
    ON (a.collection_id = c.collection_id)
    WHERE TO_CHAR(t.sale_date,'MM') = TO_CHAR(SYSDATE,'MM')
    ORDER BY t.sale_date ASC
;
