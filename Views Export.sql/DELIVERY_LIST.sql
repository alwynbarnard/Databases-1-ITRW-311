--------------------------------------------------------
--  DDL for View DELIVERY_LIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TAMOA"."DELIVERY_LIST" ("TRANSACTION_ID", "DELIVERY_METHOD", "Last Name", "CLIENT_RSA_ID", "CLIENT_CELL", "CLIENT_STREET_ADDRESS", "STREET_NR", "CITY_NAME", "CITY_POSTAL_CODE") AS 
  SELECT s.transaction_id, s.delivery_method, INITCAP(c.client_lname) AS "Last Name", 
            c.client_rsa_id, c.client_cell, c.client_street_address, c.street_nr, t.city_name, t.city_postal_code
    FROM SALE_TRANSACTION s
    INNER JOIN KLIENT c
    ON (s.client_id = c.client_id)
    INNER JOIN CITY t
    ON (c.city_code = t.city_code)
;
