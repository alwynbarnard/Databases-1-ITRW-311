--------------------------------------------------------
--  Ref Constraints for Table SALE_TRANSACTION
--------------------------------------------------------

  ALTER TABLE "TAMOA"."SALE_TRANSACTION" ADD CONSTRAINT "CLIENT_ID_FK" FOREIGN KEY ("CLIENT_ID")
	  REFERENCES "TAMOA"."KLIENT" ("CLIENT_ID") ENABLE;
