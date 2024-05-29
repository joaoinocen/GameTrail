INSERT INTO Usuarios (nome, nick, email, senha)
VALUES 
    ("João", "Joaoinocen", "inocenciojoaovitor@hotmail.com", "$2a$10$o2pGwCJ6r/PGtk.N/7HKnufQC7Q9jEGJXKGt0A47xCBWCFxUAhad."),
    ("Pedro", "Pedroinocen", "inocencioPedro@hotmail.com", "$2a$10$o2pGwCJ6r/PGtk.N/7HKnufQC7Q9jEGJXKGt0A47xCBWCFxUAhad."),
    ("teste", "teste", "teste@hotmail.com", "$2a$10$o2pGwCJ6r/PGtk.N/7HKnufQC7Q9jEGJXKGt0A47xCBWCFxUAhad.");
        
INSERT INTO Seguidores (usuario_id, seguidor_id)
VALUES  (1, 2),
        (2, 1),
        (3, 2),
        (1, 3)
    