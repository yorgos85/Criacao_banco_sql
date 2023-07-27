/*markdown
Verificando se existe o Banco de Dados, criando o mesmo.
*/

DROP DATABASE IF EXISTS yr_camisetas;
CREATE DATABASE IF NOT EXISTS yr_camisetas;

/*markdown
Verificando se o Banco de Dados foi criado.
*/

SHOW DATABASES;

/*markdown
Usando o Banco de Dados criado.
*/

USE yr_camisetas;

/*markdown
Criando a Tabela Fornecedores;
*/

CREATE TABLE fornecedores(
     fornecedores_id INT NOT NULL AUTO_INCREMENT,
     fornecedores_nome VARCHAR(50) NOT NULL,
     fornecedores_telefones INT NOT NULL,
     PRIMARY KEY(fornecedores_id)
     
);

/*markdown
Criando a Tabela Enderecos;
*/

CREATE TABLE enderecos(
     enderecos_id INT NOT NULL AUTO_INCREMENT,
     enderecos_cidade VARCHAR(50) NOT NULL,
     enderecos_rua VARCHAR(100) NOT NULL,
     enderecos_bairro VARCHAR(100) NOT NULL,
     endereco_numero INT NOT NULL DEFAULT 0,
     endereco_complemento INT NOT NULL,
     PRIMARY KEY(enderecos_id)

);

/*markdown
Criando a Tabela Cliente;
*/

CREATE TABLE cliente(
     clientes_id INT NOT NULL AUTO_INCREMENT,
     clientes_nome VARCHAR(50) NOT NULL,
     clientes_telefone INT NOT NULL,
     vendas_id INT,
     PRIMARY KEY(clientes_id),
     FOREIGN KEY(vendas_id) REFERENCES vendas(vendas_id)

);

/*markdown
Criando a Tabela Vendas;
*/

CREATE TABLE vendas(
     vendas_id INT NOT NULL AUTO_INCREMENT,
     vendas_quantidade INT NOT NULL,
     PRIMARY KEY(vendas_id)
     );

/*markdown
Criando a Tabela Camisetas;
*/

CREATE TABLE camisetas(
     camisetas_id INT NOT NULL AUTO_INCREMENT,
     camisetas_modelos VARCHAR(50) NOT NULL,
     camisetas_quantidade INT NOT NULL,
     vendas_id INT NOT NULL,
     PRIMARY KEY(camisetas_id)
     
     
     );

/*markdown
Consultando novamente se todas tabelas estao criadas;
*/

SHOW TABLES;