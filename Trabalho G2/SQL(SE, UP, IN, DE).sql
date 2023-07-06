-- Relatório de ingresso com suas informações.
SELECT ing.nom_ingresso, ingf.informacao FROM ingresso ing
INNER JOIN ingresso_inf ingf on ing.id = ingf.id


-- Relatório de ingressos com menor valor
SELECT * from ingresso ing
ORDER BY ing.preco asc


-- Relatório de ingressos em datas diferentes
SELECT MIN(nom_ingresso) AS Nome_Ingresso, data
FROM ingresso
GROUP BY data;


-- Comprando ingresso
UPDATE ingresso
SET qtd_disp = qtd_disp - 1, qtd_vend = qtd_vend + 1;
-- Junto a compra será inserido
INSERT INTO ing_vendido(id, usuario, data_vend, ing_vendido)
INSERT INTO ingresso_vendido (id_ingresso, id_vendido)


-- Devolvendo ingresso
UPDATE ingresso
SET qtd_disp = qtd_disp + 1, qtd_vend = qtd_vend -1, qtd_devol = qtd_devol + 1;
-- Junto a devolução será retirado os dados da venda
DELETE FROM ingresso_vendido IV
WHERE IV.id_ingresso = id
DELETE FROM ing_vendido B
WHERE B.id = id


-- Excluindo usuário
DELETE FROM usuario
WHERE id = id_do_usuario;


-- Excluindo pergunta
DELETE FROM ajuda
WHERE nome = 'nome'





