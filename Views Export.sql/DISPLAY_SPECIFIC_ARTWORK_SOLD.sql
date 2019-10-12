--------------------------------------------------------
--  DDL for View DISPLAY_SPECIFIC_ARTWORK_SOLD
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TAMOA"."DISPLAY_SPECIFIC_ARTWORK_SOLD" ("ARTWORK_ID", "Title") AS 
  SELECT artwork_id,INITCAP(artwork_title) AS "Title"
FROM artwork a
WHERE artwork_id = (SELECT s.artwork_id
                    FROM sale_transaction_detail s
                    WHERE s.artwork_id = 2000)
;
