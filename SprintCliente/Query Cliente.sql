CREATE TABLE Cliente (
id_cliente INTEGER PRIMARY KEY,
telefone VARCHAR(15) NOT NULL,
nome VARCHAR(30) NOT NULL,
logradouro VARCHAR(30) NOT NULL,
numero NUMERIC(5,0) NOT NULL,
complemento VARCHAR(30),
bairro VARCHAR(30) NOT NULL,
cidade VARCHAR(30) NOT NULL,
estado CHAR(2) NOT NULL,
cep NUMERIC(9,0) NOT NULL,
referencia VARCHAR(30)
);

SELECT * FROM Cliente;

DROP TABLE Cliente;

CREATE TABLE Pedidos (
	id_pedido SERIAL PRIMARY KEY,
    numero NUMERIC(5),
    valor NUMERIC(6,2),
    data TIMESTAMP,
    telefone VARCHAR(15),
    status VARCHAR(20),
    forma_pagamento VARCHAR(20),
    id_cliente INTEGER NOT NULL REFERENCES Cliente(id_cliente)
);

SELECT * FROM Pedidos;

DROP TABLE Pedidos;

CREATE TABLE Pizza (
	id_pizza SERIAL PRIMARY KEY,
	codigo NUMERIC(5,0) NOT NULL,
	nome VARCHAR(30) NOT NULL,
	descricao VARCHAR(100),
	valor NUMERIC(5,2) NOT NULL
);

SELECT * FROM Pizza;

DROP TABLE Pizza;

CREATE TABLE Contem_Pizza (
id_pizza INTEGER NOT NULL REFERENCES Pizza(id_pizza),
id_pedido INTEGER NOT NULL REFERENCES Pedidos(id_pedido),
qtd NUMERIC(2,0) NOT NULL,
valor_unt NUMERIC(5,2),
PRIMARY KEY (id_pizza, id_pedido)
);

SELECT * FROM Contem_Pizza;

DROP TABLE Contem_Pizza;
