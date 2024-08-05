
CREATE TABLE Leads (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Telefone VARCHAR(15),
    Interesse TEXT,
    Fonte VARCHAR(50),
    Temperatura ENUM('quente', 'frio', 'venda perdida'),
    Status ENUM('potencial', 'perdido'),
    DataCadastro VARCHAR(100)
);
