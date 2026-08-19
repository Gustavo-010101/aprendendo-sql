# 🗄️ Aprendendo SQL — Banco de Dados de Hospedagens

## 📌 Sobre o projeto

Este projeto foi desenvolvido com o objetivo de praticar e aplicar conceitos fundamentais de **SQL e Banco de Dados Relacionais**.

A estrutura representa um sistema de gerenciamento de hospedagens, permitindo organizar informações sobre **clientes, endereços, hospedagens, aluguéis e avaliações**.

O projeto faz parte da minha jornada de aprendizado em **Análise e Desenvolvimento de Sistemas**, com foco no desenvolvimento das minhas habilidades em Banco de Dados.

## 🛠️ Tecnologias utilizadas

* SQL
* Banco de Dados Relacional
* MySQL

## 📊 Estrutura do banco

O banco de dados é composto pelas seguintes tabelas:

### 👤 Clientes

Armazena informações dos clientes, como:

* ID do cliente
* Nome
* CPF
* Contato

### 📍 Endereços

Armazena os dados de localização das hospedagens:

* Rua
* Número
* Bairro
* Cidade
* Estado
* CEP

### 🏠 Hospedagens

Responsável pelo cadastro das hospedagens, relacionando-as aos seus respectivos endereços e proprietários.

### 📅 Aluguéis

Registra as reservas/aluguéis realizados pelos clientes, contendo:

* Cliente
* Hospedagem
* Data de início
* Data de término
* Preço total

### ⭐ Avaliações

Permite registrar avaliações realizadas pelos clientes sobre as hospedagens, incluindo:

* Nota
* Comentário
* Cliente responsável
* Hospedagem avaliada

## 🔗 Relacionamentos

O projeto utiliza **chaves estrangeiras (FOREIGN KEY)** para estabelecer relacionamentos entre as tabelas.

Principais relações:

```text
Clientes ────────< Aluguéis >──────── Hospedagens
                                      │
                                      │
                                      └──── Endereços

Clientes ────────< Avaliações >────── Hospedagens
```

## 🎯 Objetivos de aprendizagem

Com este projeto, pratiquei conceitos importantes como:

* Criação de tabelas com `CREATE TABLE`
* Definição de chaves primárias com `PRIMARY KEY`
* Criação de relacionamentos com `FOREIGN KEY`
* Utilização de diferentes tipos de dados
* Organização de dados em um banco relacional
* Integridade e relacionamento entre informações

## 🚀 Próximos passos

Pretendo continuar evoluindo este projeto, adicionando:

* Inserção de dados com `INSERT`
* Consultas utilizando `SELECT`
* Filtros com `WHERE`
* Ordenação e agrupamento de dados
* `JOIN` entre diferentes tabelas
* Consultas mais avançadas
* Melhorias na modelagem do banco de dados

## 👨‍💻 Autor

**Gustavo Favoreto**

Estudante de **Análise e Desenvolvimento de Sistemas**, em busca de desenvolver continuamente minhas habilidades em tecnologia, programação e banco de dados.

---

⭐ Se este projeto foi útil ou interessante, fique à vontade para acompanhar minha evolução no GitHub!
