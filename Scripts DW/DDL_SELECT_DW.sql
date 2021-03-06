CREATE TABLE FACT_RESULTS AS (
SELECT 
RESULTS.RESULTID AS "RESULT_ID",
DRIVERS.DRIVERID AS "DRIVER_ID",
CONSTRUCTORS.CONSTRUCTORID AS "CONSTRUCTOR_ID",
RACES.RACEID AS "RACE_ID",
CIRCUITS.CIRCUITID AS "CIRCUIT_ID",
TO_CHAR(RACES."DATE",'YYYYMMDD') AS "DATE_ID",
NVL(CONSTRUCTOR_RESULTS.POINTS,0) AS "CONSTRUCTOR_RESULTS_POINTS",
RESULTS.GRID AS "GRID_POSITION",
RESULTS.POSITIONORDER AS "DRIVER_FINISH_POSITION",
RESULTS.POINTS AS "RACE_DRIVER_POINTS",
NVL(RESULTS."RANK",0) AS "FASTEST_LAP_RANK",
RESULTS.FASTESTLAPSPEED AS "FASTEST_LAP_SPEED"

FROM RESULTS
LEFT JOIN RACES
ON RESULTS.RACEID = RACES.RACEID
LEFT JOIN DRIVERS
ON RESULTS.DRIVERID = DRIVERS.DRIVERID
LEFT JOIN CONSTRUCTORS
ON RESULTS.CONSTRUCTORID = CONSTRUCTORS.CONSTRUCTORID
LEFT JOIN CIRCUITS
ON RACES.CIRCUITID = CIRCUITS.CIRCUITID
LEFT JOIN CONSTRUCTOR_RESULTS
ON CONSTRUCTORS.CONSTRUCTORID = CONSTRUCTOR_RESULTS.CONSTRUCTORID
AND RACES.RACEID = CONSTRUCTOR_RESULTS.RACEID
);


CREATE TABLE DIM_RACES AS (
SELECT
RACEID AS "RACE_ID",
CONCAT(NAME,CONCAT(' ',YEAR)) AS "RACE_NAME"
FROM
RACES
);

CREATE TABLE DIM_CIRCUITS AS (
SELECT
CIRCUITID AS "CIRCUIT_ID",
"NAME" AS "CIRCUIT_NAME",
LOCATION AS "CIRCUIT_LOCATION",
COUNTRY AS "CIRCUIT_COUNTRY",
LAT AS "CIRCUIT_LATITUDE",
LNG AS "CIRCUIT_LONGITUDE",
ALT AS "CIRCUIT_ALTITUDE"
FROM
CIRCUITS
);

CREATE TABLE DIM_DRIVERS AS (
SELECT
DRIVERID AS "DRIVER_ID",
CONCAT(FORENAME,CONCAT(' ',SURNAME)) AS "DRIVER_NAME",
NATIONALITY AS "DRIVER_NATIONALITY"
FROM 
DRIVERS
);

CREATE TABLE DIM_CONSTRUCTORS AS (
SELECT
CONSTRUCTORID AS "CONSTRUCTOR_ID",
"NAME" AS "CONSTRUCTOR_NAME",
NATIONALITY AS "CONSTRUCTOR_NATIONALITY"
FROM
CONSTRUCTORS
);

CREATE TABLE DIM_DATE (
   DATE_ID              INTEGER               not null,
   "DATE"				DATE				  not null,
   WEEK_DAY             VARCHAR2(20)          not null,
   TEN_DAYS				SMALLINT			  not null,
   FORTNIGHT            SMALLINT		      not null,
   MONTH_NUMBER			SMALLINT			  not null,
   "MONTH"              VARCHAR2(30)          not null,
   BIMESTER				SMALLINT			  not null,
   QUARTER              SMALLINT		      not null,
   SEMESTER             SMALLINT    	      not null,
   "YEAR"               SMALLINT    	      not null
);