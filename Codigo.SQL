CREATE TABLE Pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_Cliente INT,
    id_Produtos INT,
    quantidade INT,
    status INT NOT NULL,
    FOREIGN KEY (id_Cliente) REFERENCES Clientes(id),
    FOREIGN KEY (id_Produtos) REFERENCES Produtos(id)
);

CREATE TABLE Atendimentos (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_Funcionario INT,
    id_Cliente INT,
    data_hora DATETIME,
    tipo_atendimento VARCHAR(255) NOT NULL,
    conteudo VARCHAR(255),
    atendimento ENUM('disponivel', 'indisponivel') NOT NULL,
    PRIMARY KEY (id_Funcionario, id_Cliente)
);

CREATE TABLE Produtos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    tipo INT,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT,
    Variacoes INT,
    Descricao_Produto VARCHAR(255) NOT NULL,
    Nome_Produto VARCHAR(255) NOT NULL
);

CREATE TABLE Camp_Personalizados_Clientes (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_Cliente INT,
    campo_personalizado VARCHAR(255) NOT NULL,
    detalhe VARCHAR(255),
    PRIMARY KEY (id_Cliente, campo_personalizado),
    FOREIGN KEY (id_Cliente) REFERENCES Clientes(ID)
);

CREATE TABLE Clientes (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Telefone VARCHAR(20),
    Endereco VARCHAR(255),
    Interesses VARCHAR(255)
);

CREATE TABLE Interesses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_Cliente INT,
    id_Interesses_e_Temperatura INT,
    FOREIGN KEY (id_Cliente) REFERENCES Clientes(ID)
);

CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(200), NOT NULL,
    Telefone VARCHAR(100), NOT NULL
    Cargo VARCHAR(100),
    HorarioTrabalho DATETIME NOT NULL,
    ClientesAtendidos VARCHAR(200)
);

CREATE TABLE Clientes_Atendidos_por_Funcionario (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_Funcionario INT,
    NomeCliente VARCHAR(200),
    FOREIGN KEY (id_Funcionario) REFERENCES Funcionarios(id)
);

CREATE TABLE Interesse_e_Temperatura (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Interesse_Temperatura_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Produto INT,
    Quantidade INT,
    Valor_Total DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(255),
    Numero_Pedido INT NOT NULL
);
