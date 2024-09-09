--24S_CST2355_310 Database Systems
--cleanup script for beerStore


--Rafael Ignacio xDias
--Amin Nekouei

DROP USER manager CASCADE;
DROP ROLE applicationAdmin;
	DROP TABLESPACE beerStore INCLUDING CONTENTS AND DATAFILES;

-- End of File