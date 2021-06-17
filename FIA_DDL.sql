/*==============================================================*/
/* DBMS name:      ORACLE Version 19c                           */
/* Created on:     15/06/2021 10:16:16                          */
/*==============================================================*/


alter table CONSTRUCTORS_STANDINGS
   drop constraint FK_CON_STAND_REFERENCE_CON;

alter table CONSTRUCTORS_STANDINGS
   drop constraint FK_CON_STAND_REFERENCE_RACES;

alter table CONSTRUCTOR_RESULTS
   drop constraint FK_CON_REFERENCE_CON_RESULTS;

alter table CONSTRUCTOR_RESULTS
   drop constraint FK_CON_RESULTS_REFERENCE_RACES;

alter table DRIVER_STANDINGS
   drop constraint FK_DRIVERS_REFERENCE_DRIVERS;

alter table DRIVER_STANDINGS
   drop constraint FK_DRIVERS_REFERENCE_RACES;

alter table LAP_TIMES
   drop constraint FK_LAP_TIME_REFERENCE_DRIVERS;

alter table LAP_TIMES
   drop constraint FK_LAP_TIME_REFERENCE_RACES;

alter table PIT_STOPS
   drop constraint FK_PIT_STOP_REFERENCE_DRIVERS;

alter table PIT_STOPS
   drop constraint FK_PIT_STOP_REFERENCE_RACES;

alter table QUALIFYING
   drop constraint FK_QUALIFYI_REFERENCE_RACES;

alter table QUALIFYING
   drop constraint FK_QUALIFYI_REFERENCE_DRIVERS;

alter table QUALIFYING
   drop constraint FK_QUALIFYI_REFERENCE_CONSTRUC;

alter table RACES
   drop constraint FK_RACES_REFERENCE_CIRCUITS;

alter table RESULTS
   drop constraint FK_RESULTS_REFERENCE_CONST;

alter table RESULTS
   drop constraint FK_RESULTS_REFERENCE_STATUS;

alter table RESULTS
   drop constraint FK_RESULTS_REFERENCE_RACES;

alter table RESULTS
   drop constraint FK_RESULTS_REFERENCE_DRIVERS;

drop table CIRCUITS cascade constraints;

drop table CONSTRUCTORS cascade constraints;

drop table CONSTRUCTORS_STANDINGS cascade constraints;

drop table CONSTRUCTOR_RESULTS cascade constraints;

drop table DRIVERS cascade constraints;

drop table DRIVER_STANDINGS cascade constraints;

drop table LAP_TIMES cascade constraints;

drop table PIT_STOPS cascade constraints;

drop table QUALIFYING cascade constraints;

drop table RACES cascade constraints;

drop table RESULTS cascade constraints;

drop table STATUS cascade constraints;

/*==============================================================*/
/* Table: CIRCUITS                                              */
/*==============================================================*/
create table CIRCUITS (
   CIRCUITID            INTEGER               not null,
   CIRCUITREF           VARCHAR2(50)          not null,
   NAME                 VARCHAR2(50)          not null,
   LOCATION             VARCHAR2(50),
   COUNTRY              VARCHAR2(50),
   LAT                  FLOAT,
   LNG                  FLOAT,
   ALT                  INTEGER,
   constraint PK_CIRCUITS primary key (CIRCUITID)
);

/*==============================================================*/
/* Table: CONSTRUCTORS                                          */
/*==============================================================*/
create table CONSTRUCTORS (
   CONSTRUCTORID        INTEGER               not null,
   CONSTRUCTORREF       VARCHAR2(25)          not null,
   NAME                 VARCHAR2(25)          not null,
   NATIONALITY          VARCHAR2(25),
   constraint PK_CONSTRUCTORS primary key (CONSTRUCTORID)
);

/*==============================================================*/
/* Table: CONSTRUCTORS_STANDINGS                                */
/*==============================================================*/
create table CONSTRUCTORS_STANDINGS (
   CONSTRUCTORSTANDINGSID INTEGER               not null,
   RACEID               INTEGER               not null,
   CONSTRUCTORID        INTEGER               not null,
   POINTS               FLOAT                 not null,
   POSITION             INTEGER,
   POSITIONTEXT         VARCHAR2(3),
   WINS                 INTEGER               not null,
   constraint PK_CONSTRUCTORS_STANDINGS primary key (CONSTRUCTORSTANDINGSID)
);

/*==============================================================*/
/* Table: CONSTRUCTOR_RESULTS                                   */
/*==============================================================*/
create table CONSTRUCTOR_RESULTS (
   CONSTRUCTORRESULTSID INTEGER               not null,
   RACEID               INTEGER               not null,
   CONSTRUCTORID        INTEGER               not null,
   POINTS               FLOAT,
   STATUS               VARCHAR2(3),
   constraint PK_CONSTRUCTOR_RESULTS primary key (CONSTRUCTORRESULTSID)
);

/*==============================================================*/
/* Table: DRIVERS                                               */
/*==============================================================*/
create table DRIVERS (
   DRIVERID             INTEGER               not null,
   DRIVERREF            VARCHAR2(20)          not null,
   "NUMBER"             INTEGER,
   CODE                 VARCHAR2(3),
   FORENAME             VARCHAR2(25)          not null,
   SURNAME              VARCHAR2(25)          not null,
   DOB                  DATE,
   NATIONALITY          VARCHAR2(25),
   constraint PK_DRIVERS primary key (DRIVERID)
);

/*==============================================================*/
/* Table: DRIVER_STANDINGS                                      */
/*==============================================================*/
create table DRIVER_STANDINGS (
   DRIVERSTANDINGSID__  INTEGER               not null,
   RACEID               INTEGER               not null,
   DRIVERID             INTEGER               not null,
   POINTS               FLOAT                 not null,
   POSITION             INTEGER,
   POSITIONTEXT         VARCHAR2(3),
   WINS                 INTEGER               not null,
   constraint PK_DRIVER_STANDINGS primary key (DRIVERSTANDINGSID__)
);

/*==============================================================*/
/* Table: LAP_TIMES                                             */
/*==============================================================*/
create table LAP_TIMES (
   RACEID               INTEGER               not null,
   DRIVERID             INTEGER               not null,
   LAP                  INTEGER               not null,
   POSITION             INTEGER,
   TIME                 VARCHAR2(15),
   MILLISECONDS         INTEGER,
   constraint PK_LAP_TIMES primary key (RACEID, DRIVERID, LAP)
);

/*==============================================================*/
/* Table: PIT_STOPS                                             */
/*==============================================================*/
create table PIT_STOPS (
   RACEID               INTEGER               not null,
   DRIVERID             INTEGER               not null,
   STOP                 INTEGER               not null,
   LAP                  INTEGER               not null,
   TIME                 VARCHAR2(10)          not null,
   DURATION             VARCHAR2(10),
   MILLISECONDS         INTEGER,
   constraint PK_PIT_STOPS primary key (RACEID, DRIVERID, STOP)
);

/*==============================================================*/
/* Table: QUALIFYING                                            */
/*==============================================================*/
create table QUALIFYING (
   QUALIFYID            INTEGER               not null,
   RACEID               INTEGER               not null,
   DRIVERID             INTEGER               not null,
   CONSTRUCTORID        INTEGER               not null,
   "NUMBER"             INTEGER               not null,
   POSITION             INTEGER,
   Q1                   VARCHAR2(10),
   Q2                   VARCHAR2(10),
   Q3                   VARCHAR2(10),
   constraint PK_QUALIFYING primary key (QUALIFYID)
);

/*==============================================================*/
/* Table: RACES                                                 */
/*==============================================================*/
create table RACES (
   RACEID               INTEGER               not null,
   YEAR                 INTEGER               not null,
   ROUND                INTEGER               not null,
   CIRCUITID            INTEGER               not null,
   NAME                 VARCHAR2(30)          not null,
   "DATE"               DATE                  not null,
   TIME                 VARCHAR2(10),
   constraint PK_RACES primary key (RACEID)
);

/*==============================================================*/
/* Table: RESULTS                                               */
/*==============================================================*/
create table RESULTS (
   RESULTID             INTEGER               not null,
   RACEID               INTEGER               not null,
   DRIVERID             INTEGER               not null,
   CONSTRUCTORID        INTEGER               not null,
   "NUMBER"             INTEGER,
   GRID                 INTEGER               not null,
   POSITION             INTEGER,
   POSITIONTEXT         VARCHAR2(3)           not null,
   POSITIONORDER        INTEGER               not null,
   POINTS               FLOAT                 not null,
   LAPS                 INTEGER               not null,
   TIME                 VARCHAR2(20),
   MILLISECONDS         INTEGER,
   FASTESTLAP           INTEGER,
   RANK                 INTEGER,
   FASTESTLAPTIME       VARCHAR2(20),
   FASTESTLAPSPEED      VARCHAR2(20),
   STATUSID             INTEGER               not null,
   constraint PK_RESULTS primary key (RESULTID)
);

/*==============================================================*/
/* Table: STATUS                                                */
/*==============================================================*/
create table STATUS (
   STATUSID             INTEGER               not null,
   STATUS               VARCHAR2(20),
   constraint PK_STATUS primary key (STATUSID)
);

alter table CONSTRUCTORS_STANDINGS
   add constraint FK_CON_STAND_REFERENCE_CON foreign key (CONSTRUCTORID)
      references CONSTRUCTORS (CONSTRUCTORID);

alter table CONSTRUCTORS_STANDINGS
   add constraint FK_CON_STAND_REFERENCE_RACES foreign key (RACEID)
      references RACES (RACEID);

alter table CONSTRUCTOR_RESULTS
   add constraint FK_CON_REFERENCE_CON_RESULTS foreign key (CONSTRUCTORID)
      references CONSTRUCTORS (CONSTRUCTORID);

alter table CONSTRUCTOR_RESULTS
   add constraint FK_CON_RESULTS_REFERENCE_RACES foreign key (RACEID)
      references RACES (RACEID);

alter table DRIVER_STANDINGS
   add constraint FK_DRIVERS_REFERENCE_DRIVERS foreign key (DRIVERID)
      references DRIVERS (DRIVERID);

alter table DRIVER_STANDINGS
   add constraint FK_DRIVERS_REFERENCE_RACES foreign key (RACEID)
      references RACES (RACEID);

alter table LAP_TIMES
   add constraint FK_LAP_TIME_REFERENCE_DRIVERS foreign key (DRIVERID)
      references DRIVERS (DRIVERID);

alter table LAP_TIMES
   add constraint FK_LAP_TIME_REFERENCE_RACES foreign key (RACEID)
      references RACES (RACEID);

alter table PIT_STOPS
   add constraint FK_PIT_STOP_REFERENCE_DRIVERS foreign key (DRIVERID)
      references DRIVERS (DRIVERID);

alter table PIT_STOPS
   add constraint FK_PIT_STOP_REFERENCE_RACES foreign key (RACEID)
      references RACES (RACEID);

alter table QUALIFYING
   add constraint FK_QUALIFYI_REFERENCE_RACES foreign key (RACEID)
      references RACES (RACEID);

alter table QUALIFYING
   add constraint FK_QUALIFYI_REFERENCE_DRIVERS foreign key (DRIVERID)
      references DRIVERS (DRIVERID);

alter table QUALIFYING
   add constraint FK_QUALIFYI_REFERENCE_CONSTRUC foreign key (CONSTRUCTORID)
      references CONSTRUCTORS (CONSTRUCTORID);

alter table RACES
   add constraint FK_RACES_REFERENCE_CIRCUITS foreign key (CIRCUITID)
      references CIRCUITS (CIRCUITID);

alter table RESULTS
   add constraint FK_RESULTS_REFERENCE_CONST foreign key (CONSTRUCTORID)
      references CONSTRUCTORS (CONSTRUCTORID);

alter table RESULTS
   add constraint FK_RESULTS_REFERENCE_STATUS foreign key (STATUSID)
      references STATUS (STATUSID);

alter table RESULTS
   add constraint FK_RESULTS_REFERENCE_RACES foreign key (RACEID)
      references RACES (RACEID);

alter table RESULTS
   add constraint FK_RESULTS_REFERENCE_DRIVERS foreign key (DRIVERID)
      references DRIVERS (DRIVERID);

