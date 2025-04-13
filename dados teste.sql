-- Clientes
INSERT INTO Cliente (nome, telefone, email) VALUES
('João Silva', '11999999999', 'joao@email.com'),
('Maria Souza', '11888888888', 'maria@email.com');

-- Veículos
INSERT INTO Veiculo (placa, modelo, ano, id_cliente) VALUES
('ABC1234', 'Civic', 2018, 1),
('XYZ9876', 'Onix', 2020, 2);

-- Funcionários
INSERT INTO Funcionario (nome, funcao, salario) VALUES
('Carlos Mendes', 'Mecânico', 3000.00),
('Ana Lima', 'Atendente', 2000.00);

-- Serviços
INSERT INTO Servico (descricao, preco_unitario) VALUES
('Troca de óleo', 100.00),
('Alinhamento', 150.00),
('Revisão completa', 500.00);

-- Ordens de Serviço
INSERT INTO OrdemServico (data_entrada, data_saida, id_funcionario, id_veiculo, status) VALUES
('2025-04-10', '2025-04-12', 1, 1, 'Concluída'),
('2025-04-11', NULL, 1, 2, 'Em andamento');

-- Itens de Serviço
INSERT INTO ItemServico (id_ordem, id_servico, quantidade) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1);
