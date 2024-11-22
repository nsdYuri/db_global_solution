-- Gerado por Oracle SQL Developer Data Modeler 21.2.0.183.1957
--   em:        2024-11-21 21:40:48 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE device (
    id           INTEGER NOT NULL,
    name         VARCHAR2(30) NOT NULL,
    deviceinfoid INTEGER NOT NULL
);


ALTER TABLE device ADD CONSTRAINT device_pk PRIMARY KEY ( id );

CREATE TABLE deviceinfo (
    id          INTEGER NOT NULL,
    voltage     FLOAT(4) NOT NULL,
    energylevel INTEGER NOT NULL
);

ALTER TABLE deviceinfo ADD CONSTRAINT deviceinfo_pk PRIMARY KEY ( id );

CREATE TABLE "User" (
    id            INTEGER NOT NULL,
    name          VARCHAR2(30) NOT NULL,
    cpf           VARCHAR2(11) NOT NULL,
    email         VARCHAR2(20) NOT NULL,
    password      VARCHAR2(15) NOT NULL,
    isactive      INTEGER NOT NULL,
    useraddressid INTEGER NOT NULL,
    usergroupid   INTEGER NOT NULL,
    deviceid      INTEGER NOT NULL
);


ALTER TABLE "User" ADD CONSTRAINT user_pk PRIMARY KEY ( id );

CREATE TABLE useraddres (
    id           INTEGER NOT NULL,
    street       VARCHAR2(30) NOT NULL,
    "number"     VARCHAR2(5) NOT NULL,
    neighborhood VARCHAR2(30) NOT NULL,
    zipcode      VARCHAR2(9) NOT NULL
);

ALTER TABLE useraddres ADD CONSTRAINT useraddres_pk PRIMARY KEY ( id );

CREATE TABLE usergroup (
    id       INTEGER NOT NULL,
    name     VARCHAR2(30) NOT NULL,
    isactive INTEGER NOT NULL
);

ALTER TABLE usergroup ADD CONSTRAINT usergroup_pk PRIMARY KEY ( id );

ALTER TABLE device
    ADD CONSTRAINT device_deviceinfo_fk FOREIGN KEY ( deviceinfoid )
        REFERENCES deviceinfo ( id );

ALTER TABLE "User"
    ADD CONSTRAINT user_device_fk FOREIGN KEY ( deviceid )
        REFERENCES device ( id );

ALTER TABLE "User"
    ADD CONSTRAINT user_useraddres_fk FOREIGN KEY ( useraddressid )
        REFERENCES useraddres ( id );

ALTER TABLE "User"
    ADD CONSTRAINT user_usergroup_fk FOREIGN KEY ( usergroupid )
        REFERENCES usergroup ( id );

