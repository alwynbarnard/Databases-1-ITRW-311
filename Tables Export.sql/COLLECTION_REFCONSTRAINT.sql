--------------------------------------------------------
--  Ref Constraints for Table COLLECTION
--------------------------------------------------------

  ALTER TABLE "TAMOA"."COLLECTION" ADD CONSTRAINT "ARTIST_ID_FK" FOREIGN KEY ("ARTIST_ID")
	  REFERENCES "TAMOA"."ARTIST" ("ARTIST_ID") ENABLE;
