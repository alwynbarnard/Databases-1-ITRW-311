--------------------------------------------------------
--  DDL for View CALCULATE_ARTWORK_AGE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TAMOA"."CALCULATE_ARTWORK_AGE" ("ARTWORK_ID", "ARTWORK_TITLE", "DATE OF CREATION", "ARTWORK_AGE") AS 
  SELECT artwork_id, artwork_title, TO_CHAR(artwork_doc,'DD, "of"  MONTH, YYYY') AS "DATE OF CREATION",TO_CHAR(SYSDATE,'YYYY') - TO_CHAR(artwork_doc,'YYYY') AS "ARTWORK_AGE"
FROM ARTWORK
ORDER BY artwork_age DESC
;
