const criarTabelas = [
'''
 CREATE TABLE usuario(
    id INTEGER NOT NULL PRIMARY KEY
    ,email VARCHAR(150) NOT NULL
    ,senha VARCHAR(20) NOT NULL 
    ,nome VARCHAR(150) NOT NULL
  )
''',
'''
 CREATE TABLE cliente(
    id INTEGER NOT NULL PRIMARY KEY
    ,nome VARCHAR(200) NOT NULL 
    ,email VARCHAR(150) NOT NULL
    ,telefone CHAR(16) NOT NULL
    ,endereco VARCHAR(300) NOT NULL  
  )
''',
'''
 CREATE TABLE os(
    id INTEGER NOT NULL PRIMARY KEY
    ,horario VARCHAR(5) NOT NULL
    ,data VARCHAR(10) NOT NULL
    ,cliente_id INTEGER NOT NULL
    ,usuario_id INTEGER NOT NULL
    ,FOREIGN KEY (cliente_id) REFERENCES cliente (id) 
    ,FOREIGN KEY (usuario_id) REFERENCES usuario (id) 
  )
''',
];
//array de inserções
const inserirDados = [
'''
INSERT INTO cliente (nome, telefone, email, endereco)
VALUES ('Pietro','(11) 9 9874-5656','pietro@email.com','Rua Dois, nº 3, Paranavaí - PR')
''',
'''
INSERT INTO cliente (nome, telefone, email, endereco)
VALUES ('Maitê','(11) 9 9632-8578', 'maite@email.com','Rua Cinco, nº 10, Paranavaí - PR')
''',
'''
INSERT INTO cliente (nome, telefone, email, endereco)
VALUES ('Hortência','(11) 9 9562-3356','hortencia@email.com','Rua Três, nº 20, Paranavaí - PR')
''',
'''
INSERT INTO usuario (email, senha, nome)
VALUES ('marciojosedecarvalho@gmail.com','@2F34d20be2', 'Marcio Carvalho')
''',
'''
INSERT INTO usuario (email, senha, nome)
VALUES ('admin@teste.com','admin', 'Usuário Dois')
''',
'''
INSERT INTO os (horario, data, cliente_id, usuario_id)
VALUES ('8:30', '15/06/2023', 1, 1)
''',
'''
INSERT INTO os (horario, data, cliente_id, usuario_id)
VALUES ('13:30', '15/06/2023', 2, 1)
''',
'''
INSERT INTO os (horario, data, cliente_id, usuario_id)
VALUES ('9:00', '20/06/2023', 3, 1)
''',
'''
INSERT INTO os (horario, data, cliente_id, usuario_id)
VALUES ('10:00', '16/06/2023', 3, 2)
''',
];
