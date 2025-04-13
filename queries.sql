-- 1. Listar clientes e seus veículos
SELECT c.nome AS cliente, v.modelo, v.placa
FROM Cliente c
JOIN Veiculo v ON c.id_cliente = v.id_cliente
ORDER BY c.nome;

-- 2. Exibir ordens de serviço com o valor total dos serviços prestados
SELECT o.id_ordem, c.nome AS cliente, SUM(s.preco_unitario * i.quantidade) AS valor_total
FROM OrdemServico o
JOIN Veiculo v ON o.id_veiculo = v.id_veiculo
JOIN Cliente c ON v.id_cliente = c.id_cliente
JOIN ItemServico i ON o.id_ordem = i.id_ordem
JOIN Servico s ON i.id_servico = s.id_servico
GROUP BY o.id_ordem, c.nome
ORDER BY valor_total DESC;

-- 3. Contar quantas ordens de serviço cada funcionário atendeu
SELECT f.nome, COUNT(o.id_ordem) AS total_ordens
FROM Funcionario f
LEFT JOIN OrdemServico o ON f.id_funcionario = o.id_funcionario
GROUP BY f.nome
HAVING COUNT(o.id_ordem) > 0;

-- 4. Listar todas as ordens de serviço que ainda estão em andamento
SELECT o.id_ordem, c.nome AS cliente, o.status
FROM OrdemServico o
JOIN Veiculo v ON o.id_veiculo = v.id_veiculo
JOIN Cliente c ON v.id_cliente = c.id_cliente
WHERE o.status = 'Em andamento';

-- 5. Listar veículos atendidos em um intervalo de datas específico
SELECT v.modelo, v.placa, o.data_entrada
FROM OrdemServico o
JOIN Veiculo v ON o.id_veiculo = v.id_veiculo
WHERE o.data_entrada BETWEEN '2025-04-10' AND '2025-04-13';

-- 6. Calcular a média salarial dos funcionários e filtrar se for maior que 2500
SELECT AVG(salario) AS media_salarial
FROM Funcionario
HAVING AVG(salario) > 2500;
