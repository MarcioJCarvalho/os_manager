const criarTabelas = [
  '''
 CREATE TABLE provedor(
    id INTEGER NOT NULL PRIMARY KEY
    ,nome VARCHAR(150) NOT NULL
    ,telefone VARCHAR(20) NOT NULL
  )
''',
  '''
 CREATE TABLE usuario(
    id INTEGER NOT NULL PRIMARY KEY
    ,email VARCHAR(150) NOT NULL
    ,senha VARCHAR(20) NOT NULL 
    ,nome VARCHAR(150) NOT NULL
    ,url_perfil VARCHAR(255)
    ,provedor_id INTEGER
    ,FOREIGN KEY (provedor_id) REFERENCES provedor (id)
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
    ,status VARCHAR(10) NOT NULL
    ,horario VARCHAR(5) NOT NULL
    ,data VARCHAR(10) NOT NULL
    ,cliente_id INTEGER NOT NULL
    ,usuario_id INTEGER NOT NULL
    ,FOREIGN KEY (cliente_id) REFERENCES cliente (id) 
    ,FOREIGN KEY (usuario_id) REFERENCES usuario (id) 
  )
''',
  '''
 CREATE TABLE equipamento(
    id INTEGER NOT NULL PRIMARY KEY
    ,nome VARCHAR(250) NOT NULL
  )
''',
  '''
 CREATE TABLE equipamento_usuario(
    equipamento_id INTEGER
    ,usuario_id INTEGER
    ,PRIMARY KEY(equipamento_id, usuario_id)
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
INSERT INTO provedor (nome, telefone)
VALUES ('AGM Telecom','(44) 9 9199-9999')
''',
  '''
INSERT INTO usuario (email, senha, nome, url_perfil, provedor_id)
VALUES ('marciojosedecarvalho@gmail.com','@2F34d20be2', 'Marcio Carvalho', 'https://pbs.twimg.com/profile_images/2456322047/004XJm-y7WR-_-mc-champions-e-gu-do-vaz-de-lima-pode-vi_400x400.jpg', 1)
''',
  '''
INSERT INTO usuario (email, senha, nome, provedor_id)
VALUES ('admin@teste.com','admin', 'Usuário Dois', 1)
''',
  '''
INSERT INTO os (status, horario, data, cliente_id, usuario_id)
VALUES ('ATIVO', '8:30', '15/06/2023', 1, 1)
''',
  '''
INSERT INTO os (status, horario, data, cliente_id, usuario_id)
VALUES ('ATIVO', '13:30', '15/06/2023', 2, 1)
''',
  '''
INSERT INTO os (status, horario, data, cliente_id, usuario_id)
VALUES ('ATIVO', '9:00', '20/06/2023', 3, 1)
''',
  '''
INSERT INTO os (status, horario, data, cliente_id, usuario_id)
VALUES ('ATIVO', '10:00', '16/06/2023', 3, 2)
''',
  '''
INSERT INTO equipamento (nome)
VALUES ('ONT PHYHOME AC1200 4 ANTENAS P20 DUAL BAND')
''',
  '''
INSERT INTO equipamento (nome)
VALUES ('ONU XPON OPTICTIMES – ZX8101L – APC')
''',
  '''
INSERT INTO equipamento (nome)
VALUES ('ESTICADOR CABO DROP TIPO CUNHA')
''',
  '''
INSERT INTO equipamento (nome)
VALUES ('CABO DROP')
''',
  '''
INSERT INTO equipamento (nome)
VALUES ('CAIXA CTO 1X8 VAZIA')
''',
  '''
INSERT INTO equipamento_usuario (equipamento_id, usuario_id)
VALUES (1, 1)
''',
  '''
INSERT INTO equipamento_usuario (equipamento_id, usuario_id)
VALUES (3, 1)
''',
  '''
INSERT INTO equipamento_usuario (equipamento_id, usuario_id)
VALUES (5, 1)
''',
  '''
INSERT INTO equipamento_usuario (equipamento_id, usuario_id)
VALUES (2, 2)
''',
  '''
INSERT INTO equipamento_usuario (equipamento_id, usuario_id)
VALUES (4, 2)
''',
];
