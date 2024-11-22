-- DeviceInfo Table
INSERT INTO deviceinfo (id, voltage, energylevel) VALUES (1, 170.7, 80);
INSERT INTO deviceinfo (id, voltage, energylevel) VALUES (2, 300.0, 90);
INSERT INTO deviceinfo (id, voltage, energylevel) VALUES (3, 110.0, 75);
INSERT INTO deviceinfo (id, voltage, energylevel) VALUES (4, 3.85, 60);
INSERT INTO deviceinfo (id, voltage, energylevel) VALUES (5, 110.0, 95);
INSERT INTO deviceinfo (id, voltage, energylevel) VALUES (6, 257.2, 85);
INSERT INTO deviceinfo (id, voltage, energylevel) VALUES (7, 303.1, 50);
INSERT INTO deviceinfo (id, voltage, energylevel) VALUES (8, 220.0, 40);
INSERT INTO deviceinfo (id, voltage, energylevel) VALUES (9, 194.8, 30);
INSERT INTO deviceinfo (id, voltage, energylevel) VALUES (10, 220.0, 70);



-- Device Table
INSERT INTO device (id, name, deviceinfoid) VALUES (1, 'Placa_1', 1);
INSERT INTO device (id, name, deviceinfoid) VALUES (2, 'Placa_2', 2);
INSERT INTO device (id, name, deviceinfoid) VALUES (3, 'Placa_3', 3);
INSERT INTO device (id, name, deviceinfoid) VALUES (4, 'Placa_4', 4);
INSERT INTO device (id, name, deviceinfoid) VALUES (5, 'Placa_5', 5);
INSERT INTO device (id, name, deviceinfoid) VALUES (6, 'Placa_6', 6);
INSERT INTO device (id, name, deviceinfoid) VALUES (7, 'Placa_7', 7);
INSERT INTO device (id, name, deviceinfoid) VALUES (8, 'Placa_8', 8);
INSERT INTO device (id, name, deviceinfoid) VALUES (9, 'Placa_9', 9);
INSERT INTO device (id, name, deviceinfoid) VALUES (10, 'Placa_10', 10);



-- UserAddress Table
INSERT INTO useraddres (id, street, "number", neighborhood, zipcode) VALUES (1, 'Avenida Brasil', '123', 'Jardim Europa', '12345-678');
INSERT INTO useraddres (id, street, "number", neighborhood, zipcode) VALUES (2, 'Rua das Flore', '456', 'Centro Histórico', '23456-789');
INSERT INTO useraddres (id, street, "number", neighborhood, zipcode) VALUES (3, 'Travessa do Comércio', '789', 'Vila Nova', '34567-890');
INSERT INTO useraddres (id, street, "number", neighborhood, zipcode) VALUES (4, 'Alameda das Palmeiras', '321', 'Morro Alto', '45678-901');
INSERT INTO useraddres (id, street, "number", neighborhood, zipcode) VALUES (5, 'Estrada do Sol', '654', 'Parque das Nações', '56789-012');
INSERT INTO useraddres (id, street, "number", neighborhood, zipcode) VALUES (6, 'Rua Santa Luzia', '987', 'Alto da Boa Vista', '67890-123');
INSERT INTO useraddres (id, street, "number", neighborhood, zipcode) VALUES (7, 'Avenida Paulista', '147', 'Bairro das Laranjeiras', '78901-234');
INSERT INTO useraddres (id, street, "number", neighborhood, zipcode) VALUES (8, 'Praça da Liberdade', '258', 'Jardim das Acácias', '89012-345');
INSERT INTO useraddres (id, street, "number", neighborhood, zipcode) VALUES (9, 'Vila Mariana', '369', 'Santa Tereza', '90123-456');
INSERT INTO useraddres (id, street, "number", neighborhood, zipcode) VALUES (10, 'Rua Dom Pedro II', '159', 'Cidade Jardim', '01234-567');



-- UserGroup Table
INSERT INTO usergroup (id, name, isactive) VALUES (1, 'admin', 1);
INSERT INTO usergroup (id, name, isactive) VALUES (2, 'user', 1);



-- User Table
INSERT INTO "User" (id, name, cpf, email, password, isactive, useraddressid, usergroupid, deviceid) VALUES (1, 'Gabriel Silva', '12345678901', 'alice@outlook.com', 'gabsilva123', 1, 1, 1, 1);
INSERT INTO "User" (id, name, cpf, email, password, isactive, useraddressid, usergroupid, deviceid) VALUES (2, 'Mariana Oliveira', '23456789012', 'bob@outlook.com', 'marioli123', 1, 2, 2, 2);
INSERT INTO "User" (id, name, cpf, email, password, isactive, useraddressid, usergroupid, deviceid) VALUES (3, 'Rafael Santos', '34567890123', 'charlie@outlook.com', 'rafasouz123', 1, 3, 2, 3);
INSERT INTO "User" (id, name, cpf, email, password, isactive, useraddressid, usergroupid, deviceid) VALUES (4, 'Beatriz Souza', '45678901234', 'diana@outlook.com', 'beat123', 0, 4, 2, 4);
INSERT INTO "User" (id, name, cpf, email, password, isactive, useraddressid, usergroupid, deviceid) VALUES (5, 'Lucas Pereira', '56789012345', 'eve@outlook.com', 'lulupereira123', 0, 5, 2, 5);
INSERT INTO "User" (id, name, cpf, email, password, isactive, useraddressid, usergroupid, deviceid) VALUES (6, 'Amanda Costa', '67890123456', 'frank@outlook.com', 'amandinhaco123', 1, 6, 2, 6);
INSERT INTO "User" (id, name, cpf, email, password, isactive, useraddressid, usergroupid, deviceid) VALUES (7, 'João Almeida', '78901234567', 'grace@outlook.com', 'johnalme123', 1, 7, 1, 7);
INSERT INTO "User" (id, name, cpf, email, password, isactive, useraddressid, usergroupid, deviceid) VALUES (8, 'Camila Fernandes', '89012345678', 'hank@outlook.com', 'camisfefe123', 0, 8, 2, 8);
INSERT INTO "User" (id, name, cpf, email, password, isactive, useraddressid, usergroupid, deviceid) VALUES (9, 'Pedro Gomes', '90123456789', 'ivy@outlook.com', 'pedringg123', 1, 9, 2, 9);
INSERT INTO "User" (id, name, cpf, email, password, isactive, useraddressid, usergroupid, deviceid) VALUES (10, 'Sofia Carvalho', '01234567890', 'jack@outlook.com', 'sofiscarvs123', 1, 10, 1, 10);