--------------------------------------------------------
--  Ref Constraints for Table KLIENT
--------------------------------------------------------

  ALTER TABLE "TAMOA"."KLIENT" ADD CONSTRAINT "CITY_CODE_FK" FOREIGN KEY ("CITY_CODE")
	  REFERENCES "TAMOA"."CITY" ("CITY_CODE") ENABLE;
