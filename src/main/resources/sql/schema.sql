CREATE TABLE IF NOT EXISTS cliente (
  cpf VARCHAR(11) NOT NULL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL);

CREATE TABLE IF NOT EXISTS endereco_cliente (
  id_endereco INTEGER NOT NULL PRIMARY KEY,
  cpf VARCHAR(11) NOT NULL,
  cep VARCHAR(8) NOT NULL,
  logradouro VARCHAR(100) NOT NULL,
  complemento VARCHAR(100) NOT NULL, 
  numero VARCHAR(50) NOT NULL,
  bairro VARCHAR(100) NOT NULL,
  cidade VARCHAR(100) NOT NULL,
  uf VARCHAR(2) NOT NULL, 
  FOREIGN KEY (cpf) REFERENCES cliente(cpf));

CREATE TABLE IF NOT EXISTS telefone_cliente (
  id_telefone INTEGER NOT NULL PRIMARY KEY,
  cpf VARCHAR(11) NOT NULL,
  numero VARCHAR(11) NOT NULL,
  tipo_telefone INTEGER NOT NULL, 
  FOREIGN KEY (cpf) REFERENCES cliente(cpf));