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



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   2
-- WARNINGS                                 0
