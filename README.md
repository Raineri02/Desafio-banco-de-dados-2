# 🔧 Sistema de Gerenciamento de Oficina Mecânica

Este projeto simula um banco de dados relacional para uma **oficina mecânica**, com foco no gerenciamento de ordens de serviço, veículos, clientes, funcionários e serviços realizados. Foi desenvolvido como parte de um desafio de modelagem de banco de dados utilizando o modelo relacional (modelo lógico), seguido da criação do script SQL completo, inserção de dados de teste e execução de queries SQL complexas.

---

## 📌 Objetivo

- Criar um **esquema lógico** baseado em um modelo ER.
- Construir um **script SQL** completo para criação do banco.
- Popular o banco com **dados de teste**.
- Realizar **consultas SQL** com diferentes níveis de complexidade.

---

## 🧠 Esquema Lógico (Modelo Relacional)

```text
Cliente (id_cliente, nome, telefone, email)

Veiculo (id_veiculo, placa, modelo, ano, id_cliente)

Funcionario (id_funcionario, nome, funcao, salario)

Servico (id_servico, descricao, preco_unitario)

OrdemServico (id_ordem, data_entrada, data_saida, id_funcionario, id_veiculo, status)

ItemServico (id_ordem, id_servico, quantidade)
