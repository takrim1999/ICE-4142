-- This is actually to find all the tables reserved by the system object.
-- And sort out with some preferences.
USE master;
SELECT NAME,XTYPE FROM SYSOBJECTS 
WHERE XTYPE='U';