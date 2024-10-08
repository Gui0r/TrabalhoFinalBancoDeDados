
CREATE TABLE Atendimentos (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    NomeFuncionario VARCHAR(200),
    NomeCliente VARCHAR(200),
    data_hora DATETIME,
    tipo_atendimento VARCHAR(255) NOT NULL,
    conteudo VARCHAR(255),
    atendimento ENUM('disponivel', 'indisponivel') NOT NULL

);

CREATE TABLE Produtos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT,
    Variacoes VARCHAR(200),
    Descricao_Produto VARCHAR(255) NOT NULL,
    Nome_Produto VARCHAR(255) NOT NULL
);

CREATE TABLE Camp_Personalizados_Clientes (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    NomeCliente VARCHAR(200),
    campo_personalizado VARCHAR(255) NOT NULL,
    detalhe VARCHAR(255)
);

CREATE TABLE Clientes (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Telefone VARCHAR(20),
    Endereco VARCHAR(255),
    Interesses VARCHAR(255)
);

CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(200) NOT NULL,
    Telefone VARCHAR(100) NOT NULL,
    Cargo VARCHAR(100),
    HorarioTrabalho DATETIME NOT NULL,
    ClientesAtendidos VARCHAR(200)
);

CREATE TABLE Clientes_Atendidos_por_Funcionario (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    NomeFuncionario VARCHAR(200),
    NomeCliente VARCHAR(200)
);

CREATE TABLE Interesse_e_Temperatura (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    NomeCliente VARCHAR(200),
    Produto INT,
    Quantidade INT,
    Valor_Total DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(255),
    pedido INT NOT NULL
);
