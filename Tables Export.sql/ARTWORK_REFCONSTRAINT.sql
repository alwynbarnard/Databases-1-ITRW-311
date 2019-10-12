--------------------------------------------------------
--  Ref Constraints for Table ARTWORK
--------------------------------------------------------

  ALTER TABLE "TAMOA"."ARTWORK" ADD CONSTRAINT "COLLECTION_ID_FK" FOREIGN KEY ("COLLECTION_ID")
	  REFERENCES "TAMOA"."COLLECTION" ("COLLECTION_ID") ENABLE;
  ALTER TABLE "TAMOA"."ARTWORK" ADD CONSTRAINT "MEDIUM_CODE_FK" FOREIGN KEY ("MEDIUM_CODE")
	  REFERENCES "TAMOA"."ART_MEDIUM" ("MEDIUM_CODE") ENABLE;
