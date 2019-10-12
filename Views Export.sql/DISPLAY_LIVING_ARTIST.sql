--------------------------------------------------------
--  DDL for View DISPLAY_LIVING_ARTIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TAMOA"."DISPLAY_LIVING_ARTIST" ("ARTIST_LNAME", "ARTIST_DOB", "ARTIST_DOD") AS 
  SELECT artist_lname, artist_dob,artist_dod
FROM artist
WHERE artist_dod IS NULL
;
