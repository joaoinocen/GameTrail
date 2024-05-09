CREATE DATABASE IF NOT EXISTS GameTrail;
USE GameTrail

DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios (
    id int auto_increment primary key,
    nome varchar(60) not null,
    nick varchar(60) not null unique,
    email varchar(60) not null unique,
    senha varchar(20) not null UNIQUE,
    criadoEm timestamp default CURRENT_TIMESTAMP()
) ENGINE=INNODB;