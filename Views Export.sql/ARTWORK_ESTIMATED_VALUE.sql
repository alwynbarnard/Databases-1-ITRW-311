--------------------------------------------------------
--  DDL for View ARTWORK_ESTIMATED_VALUE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TAMOA"."ARTWORK_ESTIMATED_VALUE" ("ARTWORK TITLE", "DATE OF CREATION", "LENGTH_CM", "WIDTH_CM", "STATUS", "ESTIMATED VALUE") AS 
  SELECT INITCAP(artwork_title) AS "ARTWORK TITLE", artwork_doc AS "DATE OF CREATION", length_cm, width_cm,art_status AS "STATUS", TO_CHAR(art_estimated_value,'L99,999.00') AS "ESTIMATED VALUE"
FROM ARTWORK
WHERE art_estimated_value = 10000
ORDER BY artwork_doc ASC
;
