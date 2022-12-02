CREATE DATABASE IF NOT EXISTS "Uber";

USE "Uber";

CREATE TABLE IF NOT EXISTS "Usuario" (
    "id" INT NOT NULL AUTO_INCREMENT,
    "nombre" VARCHAR(30) NOT NULL,
    "apellido" VARCHAR(30) NOT NULL,
    "celular" VARCHAR(15) NOT NULL,
    "email" VARCHAR(30) NOT NULL,
    PRIMARY KEY ("id")
):

CREATE TABLE IF NOT EXISTS "Vehiculo" (
    "id" INT NOT NULL AUTO_INCREMENT,
    "marca" VARCHAR(30) NOT NULL,
    "modelo" VARCHAR(30) NOT NULL,
    "color" VARCHAR(30) NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "Conductor" (
    "id" INT NOT NULL AUTO_INCREMENT,
    "nombre" VARCHAR(30) NOT NULL,
    "apellido" VARCHAR(30) NOT NULL,
    "celular" VARCHAR(15) NOT NULL,
    "email" VARCHAR(30) NOT NULL,
    "vehiculo_id" INT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("vehiculo_id") REFERENCES Vehiculo ("id")
);

CREATE TABLE IF NOT EXISTS "FormaPago" (
    "id" INT NOT NULL AUTO_INCREMENT,
    "forma_pago" VARCHAR(30) NOT NULL,
    PRIMARY KEY ("id")
);


CREATE TABLE IF NOT EXISTS "Viaje" (
    "id" INT NOT NULL AUTO_INCREMENT,
    "fecha_hora_inicio" DATETIME(30) NOT NULL,
    "fecha_hora_fin" DATETIME(30) NOT NULL,
    "origen" VARCHAR(30) NOT NULL,
    "destino" VARCHAR(60) NOT NULL,
    "usuario_id" INT NOT NULL,
    "conductor_id" INT NOT NULL,
    "formaPago_id" INT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("usuario_id") REFERENCES Vehiculo ("id"),
    FOREIGN KEY ("conductor_id") REFERENCES Conductor ("id"),
    FOREIGN KEY ("formaPago_id") REFERENCES FormaPago ("id")
);