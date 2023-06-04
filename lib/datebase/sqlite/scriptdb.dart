const criarOS = '''
 CREATE TABLE os(
    id INTEGER NOT NULL PRIMARY KEY
    ,nomeCliente VARCHAR(200) NOT NULL
    ,telefoneCliente CHAR(16) NOT NULL
    ,emailCliente VARCHAR(150) NOT NULL
    ,enderecoCliente VARCHAR(300) NOT NULL 
  )
''';
//array de inserções
const inserirOS = [
  '''
INSERT INTO os (nomeCliente, telefoneCliente, emailCliente, enderecoCliente)
VALUES ('Pietro','(11) 9 9874-5656','pietro@email.com','Rua Dois, nº 3, Paranavaí - PR')
''',
  '''
INSERT INTO os (nomeCliente, telefoneCliente, emailCliente, enderecoCliente)
VALUES ('Maitê','(11) 9 9632-8578', 'maite@email.com','Rua Cinco, nº 10, Paranavaí - PR')
''',
  '''
INSERT INTO os (nomeCliente, telefoneCliente, emailCliente, enderecoCliente)
VALUES ('Hortência','(11) 9 9562-3356','hortencia@email.com','Rua Três, nº 20, Paranavaí - PR')
'''
];
