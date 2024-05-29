CREATE DATABASE IF NOT EXISTS GameTrail;
USE GameTrail

DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS seguidores;

CREATE TABLE usuarios (
    id int auto_increment primary key,
    nome varchar(60) not null,
    nick varchar(60) not null unique,
    email varchar(60) not null unique,
    senha varchar(100) not null UNIQUE,
    criadoEm timestamp default CURRENT_TIMESTAMP()
) ENGINE=INNODB;

CREATE TABLE seguidores (
    usuario_id int not null,
    FOREIGN KEY (usuario_id) 
    REFERENCES usuarios(id)
    ON DELETE CASCADE,
    
    seguidor_id int not null,
    FOREIGN KEY (seguidor_id)
    REFERENCES usuarios(id)
    ON DELETE CASCADE,

    PRIMARY KEY (usuario_id, seguidor_id)
) ENGINE=INNODB;