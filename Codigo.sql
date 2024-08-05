
CREATE TABLE Leads (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) not null,
    Email VARCHAR(100) UNIQUE not null,
    Telefone VARCHAR(15) not null,
    Interesse TEXT,
    Fonte VARCHAR(50),
    Temperatura ENUM('quente', 'frio', 'venda perdida'),
    Status ENUM('potencial', 'perdido'),
    DataCadastro VARCHAR(100)
);
