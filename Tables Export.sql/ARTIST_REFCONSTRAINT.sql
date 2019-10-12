--------------------------------------------------------
--  Ref Constraints for Table ARTIST
--------------------------------------------------------

  ALTER TABLE "TAMOA"."ARTIST" ADD CONSTRAINT "BANK_CODE_FK" FOREIGN KEY ("BANK_CODE")
	  REFERENCES "TAMOA"."BANK" ("BANK_CODE") ENABLE;
