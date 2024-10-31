DROP SCHEMA EST_V;
CREATE SCHEMA EST_V;

USE EST_V;

CREATE TABLE IF NOT EXISTS CLIENTES(
CPF_CLI INT PRIMARY KEY,
NOME_CLI VARCHAR(45) NOT NULL,
NASC_CLI DATE,
STATUS_CLI ENUM('SIM', 'NÃO'),
CIDADE_CLI VARCHAR(50),
ESTADO_CLI VARCHAR(50),
PAIS_CLI VARCHAR(50),
NUMRUA_CLI VARCHAR(10),
BAIRRO_CLI VARCHAR(50)
);

ALTER TABLE CLIENTES ADD TELEFONE_CLI VARCHAR(50);

CREATE TABLE IF NOT EXISTS PRODUTOS(
ID_PROD INT PRIMARY KEY,
NOME_PROD VARCHAR(70) NOT NULL,
DIMENSOES_PROD INT NOT NULL,
VALOR_PROD INT NOT NULL,
DISP_PROD ENUM('SIM', 'NAO'),
PROD_FOR_FORNEC VARCHAR(45)
);

ALTER TABLE PRODUTOS ADD COR_PRODUTO VARCHAR(20);

CREATE TABLE IF NOT EXISTS FORNECEDORES(
ID_FORN INT PRIMARY KEY,
TELEFONE_FORN INT NOT NULL,
EMAIL_FORN VARCHAR(50),
CONTATO_FORN VARCHAR(50) NOT NULL,
PRODUTO_FORN VARCHAR(30) NOT NULL,
DESCPROD_FORN VARCHAR(100) NOT NULL
);

ALTER TABLE FORNECEDORES ADD CNPJ VARCHAR(130) NOT NULL;

CREATE TABLE IF NOT EXISTS ESTOQUE(
ID_ESTOQUE INT PRIMARY KEY,
PROD_ESTOQUE VARCHAR(50) NOT NULL,
LOC_PROD_ESTOQUE VARCHAR(50) NOT NULL,
QNT_PROD_ESTOQUE INT NOT NULL,
PROD_DISP_ESTOQUE INT NOT NULL
);

CREATE TABLE IF NOT EXISTS VENDA(
ID_VENDA INT PRIMARY KEY,
PRODUTO_VENDA VARCHAR(30) NOT NULL,
QNT_PRODUTO_VENDA INT NOT NULL,
PAGAMENTO_VENDA VARCHAR(20) NOT NULL,
CLIENTE_VENDA INT
);

ALTER TABLE VENDA ADD DATA_VENDA DATE;

CREATE TABLE IF NOT EXISTS PAGAMENTOS(
ID_PAGAMENTO INT PRIMARY KEY,
CLIENTE_PAGAMENTO INT,
DATA_PAGAMENTO DATE NOT NULL,
VALOR_PAGAMENTO INT NOT NULL,
STATUS_PAGAMENTO ENUM('PAGO', 'PENDENTE'),
ID_CLIENTE INT NOT NULL,
CONSTRAINT FK_CLIENTE FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(CPF_CLI)
););