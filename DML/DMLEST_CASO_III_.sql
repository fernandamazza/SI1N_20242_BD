DELETE FROM CLIENT WHERE COD_CLIENTE = 1;
DELETE FROM EMPREG WHERE MATRICULA_EMPREGADOS = 1001;
DELETE FROM EMPRESAS WHERE CNPJ = '12345678000195';
DELETE FROM FORNEC WHERE CNPJ = '98765432000123';
DELETE FROM TIPOS_END WHERE COD_END = 1;
DELETE FROM TIPOS_COMPON WHERE COD_COMPONENTE = 10;
DELETE FROM ENDERECO WHERE ID = 15;
DELETE FROM COMPON WHERE ID_COMPONENTES = 200;
DELETE FROM PROD WHERE ID_PROD = 5;
DELETE FROM ENCOMENDAS WHERE NUMERO = 1010;
DELETE FROM MAQUINAS WHERE ID_MAQUINA = 3;
DELETE FROM RECURSOS_ESPECIFICOS WHERE ID_RECURSO = 8;
DELETE FROM RM WHERE ID_MANUTENc = 50;
DELETE FROM RS WHERE ID_SUPRIM = 12;
DELETE FROM ENCOMENDA_PROD WHERE ID_ENCOMENDA = 1001 AND ID_PROD = 10;


UPDATE CLIENT
SET RAZAO_SOCIAL = 'Nova Razão Social', TELEFONE_CLIEN = '11987654321'
WHERE COD_CLIENT = 1;
UPDATE EMPREGADOS
SET SALARIO_EMPREG = 3000.00
WHERE MATRICULA_EMPREG = 1001;
UPDATE EMPRESAS
SET TELEFONE_EMPR = '1133445566'
WHERE CNPJ = '12345678000195';
UPDATE FORNEC
SET RAMO_ATIV = 'Novo Ramo de Atividade'
WHERE CNPJ = '98765432000123';
UPDATE TIPOS_END
SET NOME = 'Novo Tipo de Endereço'
WHERE COD_END = 1;
UPDATE TIPOS_COMPON
SET DESCRICAO = 'Nova descrição para o componente'
WHERE COD_COMPON = 10;
UPDATE END
SET LOGRADOURO = 'Rua Nova', CIDADE = 'São Paulo'
WHERE ID = 15;
UPDATE COMPON
SET PRECO_UNIT = 150.00
WHERE ID_COMPON = 200;
UPDATE PROD
SET PRECO = 250.00
WHERE ID_PROD = 5;
UPDATE ENCOMENDAS
SET VALOR_TOTAL = 1200.00
WHERE NUMERO = 1010;
UPDATE MAQUINAS
SET TEMPO_VIDA = 12
WHERE ID_MAQUINA = 3;
UPDATE RECURSOS_ESPECIFICOS
SET QUANTIDADE_NECES = 10
WHERE ID_RECURSO = 8;
UPDATE RM
SET DESCRICAO = 'Manutenção realizada em data diferente'
WHERE ID_MANUTENCAO = 50;
UPDATE RS
SET QUANTIDADE = 500
WHERE ID_SUPRIMENTO = 12;
UPDATE ENCOMENDA_PRODUTOS
SET QUANTIDADE = 20
WHERE ID_ENCOMENDA = 1001 AND ID_PRODUTO = 10;

INSERT INTO CLIENTES (COD_CLIENTE, CNPJ, RAZAO_SOCIAL, RAMO_ATIVIDADE, DATA_CADASTRAMENTO_CLI, TELEFONE_CLI, CIDADE_CLI, ESTADO_CLI, PAIS_CLI, NUMRUA_CLI, BAIRRO_CLI, COMPLEMENTO)
VALUES 
(1, '12345678000195', 'Empresa A', 'Comércio', '2024-11-01', '1122334455', 'São Paulo', 'SP', 'Brasil', '100', 'Centro', 'Apt 101'),
(2, '98765432000155', 'Cliente Exemplo Ltda', 'Serviços', '2024-11-02', '11987654321', 'Rio de Janeiro', 'RJ', 'Brasil', '200', 'Copacabana', 'Loja 2'),
(3, '12398765400015', 'Exemplo Comercial', 'Importação', '2024-11-03', '11933334444', 'Belo Horizonte', 'MG', 'Brasil', '300', 'Centro', 'Galpão 10'),
(4, '45678912300099', 'Distribuidora XYZ', 'Distribuição', '2024-11-04', '1155443322', 'Curitiba', 'PR', 'Brasil', '400', 'Boa Vista', 'Sala 305');

INSERT INTO EMPREGADOS (MATRICULA_EMPREGADOS, NOME, TEL_EMPREGADOS, CARGO_EMPREGADOS, SALARIO_EMPREGADOS, DATA_ADMISSAO, QUALIFICACOES_EMPREGADOS, CIDADE_EMPREGADOS, ESTADO_EMPREGADOS, PAIS_EMPREGADOS, NUMRUA_EMPREGADOS, BAIRRO_EMPREGADOS, COMPLEMENTO)
VALUES 
(1001, 'Carlos Souza', '11988887777', 'Gerente de Vendas', 4500.00, '2024-10-01', 'MBA em Vendas', 'São Paulo', 'SP', 'Brasil', '500', 'Jardim Paulista', 'Apt 201'),
(1002, 'Maria Silva', '11977776666', 'Analista de TI', 3500.00, '2024-09-10', 'Engenharia da Computação', 'São Paulo', 'SP', 'Brasil', '600', 'Vila Progresso', 'Sala 202'),
(1003, 'Lucas Oliveira', '11966665555', 'Assistente Administrativo', 2500.00, '2024-08-15', 'Técnico em Administração', 'São Paulo', 'SP', 'Brasil', '700', 'Alto da Lapa', 'Apt 303'),
(1004, 'Fernanda Lima', '11955554444', 'Coordenadora de RH', 5000.00, '2024-07-01', 'Psicologia', 'São Paulo', 'SP', 'Brasil', '800', 'Vila Madalena', 'Sala 404');

INSERT INTO EMPRESAS (CNPJ, RAZAO_SOCIAL, RAMO_ATIVIDADE, TELEFONE_EMPR, PESSOA_CONTATO, CIDADE_EMPR, ESTADO_EMPR, PAIS_EMPR, NUMRUA_EMPR, BAIRRO_EMPR, COMPLEMENTO)
VALUES 
('12345678000195', 'Tech Solutions Ltda', 'Tecnologia', '1122334455', 'Carlos Pereira', 'São Paulo', 'SP', 'Brasil', '1010', 'Bela Vista', 'Sala 303'),
('98765432000155', 'Consultoria Global', 'Consultoria', '11987654321', 'Ana Costa', 'Rio de Janeiro', 'RJ', 'Brasil', '2020', 'Ipanema', 'Apt 10'),
('12398765400015', 'Comércio XYZ', 'Comércio', '11933334444', 'Roberto Almeida', 'Belo Horizonte', 'MG', 'Brasil', '3030', 'Funcionários', 'Loja 5'),
('45678912300099', 'Indústria Brasileira', 'Indústria', '1155443322', 'Fernanda Lima', 'Curitiba', 'PR', 'Brasil', '4040', 'Centro', 'Armazém 12');

INSERT INTO FORNECEDORES (CNPJ, RAZAO_SOCIAL, RAMO_ATIVIDADE, TELEFONE_FORN, PESSOA_CONTATO, CIDADE_FORN, ESTADO_FORN, PAIS_FORN, NUMRUA_FORN, BAIRRO_FORN, COMPLEMENTO)
VALUES 
('98765432000123', 'Fornecedora ABC', 'Suprimentos', '1133445566', 'Renato Oliveira', 'São Paulo', 'SP', 'Brasil', '110', 'Centro', 'Apt 201'),
('45678912300145', 'Fornex Indústria', 'Indústria', '11933334455', 'João Pereira', 'Campinas', 'SP', 'Brasil', '220', 'Vila Progresso', 'Sala 101'),
('12398765400078', 'Distribuidora LMN', 'Distribuição', '1122334455', 'Márcia Silva', 'Porto Alegre', 'RS', 'Brasil', '330', 'Cidade Baixa', 'Loja 4'),
('78965412300032', 'Gomex Comércio', 'Comércio', '11987654322', 'Paula Martins', 'Curitiba', 'PR', 'Brasil', '440', 'Alto da XV', 'Apt 504');

INSERT INTO TIPOS_ENDERECO (COD_END, NOME, CATEGORIA)
VALUES 
(1, 'Endereço Comercial', 'Comercial'),
(2, 'Endereço Residencial', 'Residencial'),
(3, 'Endereço de Entrega', 'Logístico'),
(4, 'Endereço de Fábrica', 'Industrial');

INSERT INTO TIPOS_COMPONENTE (COD_COMPONENTE, NOME, DESCRICAO)
VALUES 
(1, 'Computador', 'Equipamento para escritório e operações de TI'),
(2, 'Impressora', 'Equipamento de impressão para escritório'),
(3, 'Monitor', 'Tela para computador de uso geral'),
(4, 'Teclado', 'Teclado de computador ergonômico');

INSERT INTO ENDERECO (ID, LOGRADOURO, CIDADE, ESTADO, PAIS, NUMERO, RUA, CEP, TIPOS_ENDERECO_CODIGO)
VALUES 
(1, 'Avenida Paulista', 'São Paulo', 'SP', 'Brasil', 1001, 'Avenida', '01310-000', 1),
(2, 'Rua Augusta', 'São Paulo', 'SP', 'Brasil', 2002, 'Rua', '01305-000', 2),
(3, 'Rua dos Três Irmãos', 'Rio de Janeiro', 'RJ', 'Brasil', 3003, 'Rua', '22222-000', 3),
(4, 'Avenida Brasil', 'Rio de Janeiro', 'RJ', 'Brasil', 4004, 'Avenida', '22000-000', 4);

INSERT INTO COMPONENTES (ID_COMPONENTES, NOME, QUANTIDADE_ESTOQUE, PRECO_UNITARIO, UNIDADE, TIPOS_COMPONENTES_CODIGO, CNPJ_FORNECEDOR)
VALUES 
(1, 'HD Externo', 100, 250.00, 'Unidade', 1, '98765432000123'),
(2, 'Cartucho de Impressora', 200, 50.00, 'Unidade', 2, '45678912300145'),
(3, 'Monitor LCD', 150, 800.00, 'Unidade', 3, '12398765400078'),
(4, 'Teclado Mecânico', 300, 150.00, 'Unidade', 4, '78965412300032');

INSERT INTO PRODUTOS (ID_PRODUTOS, NOME, COR, DIMENSOES, PESO, PRECO, TEMPO_FABRICACAO, DESENHO_PRODUTO, HORAS_MAO_OBRA)
VALUES 
(1, 'Notebook A1', 'Preto', '15,6"', 2.5, 2500.00, 20, 'Desenho A1', 5),
(2, 'Smartphone Z', 'Prata', '6"', 0.2, 1500.00, 10, 'Desenho Z', 2),
(3, 'Mesa Digitalizadora', 'Branca', '30x40 cm', 1.5, 500.00, 15, 'Desenho M1', 3),
(4, 'Impressora Laser', 'Preta', '30x40x25 cm', 5.0, 1200.00, 25, 'Desenho P1', 4);

INSERT INTO ENCOMENDAS (NUMERO, DATA_INCLUSAO, VALOR_TOTAL, VALOR_DESCONTO, VALOR_LIQUIDO, ID_FORMA_PAGAMENTO, QUANTIDADE_PARCELAS, ID_CLIENTES)
VALUES 
(1010, '2024-11-01', 1500.00, 100.00, 1400.00, 1, 3, 1),
(1011, '2024-11-02', 3000.00, 200.00, 2800.00, 2, 6, 2),
(1012, '2024-11-03', 2000.00, 150.00, 1850.00, 1, 2, 3),
(1013, '2024-11-04', 2500.00, 250.00, 2250.00, 2, 5, 4);