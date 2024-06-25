create database lojaconstrucao;
use lojaconstrucao;

create table Produto(
idProduto int primary key auto_increment,
nameProduto varchar(20),
idFornecedor int,
idCategoria int,
valor int,
CONSTRAINT fk_idFornecedor FOREIGN KEY (idFornecedor) REFERENCES Fornecedor
CONSTRAINT fk_idCategoria FOREIGN KEY (idCategoria) REFERENCES Categoria
);

create table Categoria(
idCategoria int primary key auto_increment,
nameCategoria varchar(20),
);

create table Fornecedor(
idFornecedor int primary key auto_increment,
nameFornecedor varchar(20)
);

create table Cliente(
idCliente int primary key auto_increment,
nameCliente varchar(20),
cpf int,
endereco varchar(50),
phone int,
idade int,
);

create table Pagamento(
idPagamento int primary key auto_increment,
credito boolean,
debito  boolean,
pix boolean,
dinheiro boolean,
);

create table Venda(
idVenda int primary key auto_increment,
idProduto int,
idCliente int,
idPagamento int,
valor int,
CONSTRAINT fk_idProduto FOREIGN KEY (idProduto) REFERENCES Produto
CONSTRAINT fk_idCliente FOREIGN KEY (idCliente) REFERENCES Cliente
CONSTRAINT fk_idPagamento FOREIGN KEY (idPagamento) REFERENCES Pagamento
);

create table Cargo(
idCargo int primary key auto_increment,
nameCargo varchar(20)
);

create table Funcionarios(
idFuncionario int primary key auto_increment,
idCargo int,
nameFuncionario varchar(20),
CONSTRAINT fk_idCargo FOREIGN KEY (idCargo) REFERENCES Cargo
);