--- Total de vendas por clientes
select c.nome, sum(pr.preço * i.quantidade) As total_vendas
from Clientes c
join Pedidos p on c.cliente_id = p.cliente_id
join Itens_pedidos i on p.pedido_id = i.pedido_id
join Produtos pr on i.produto_id = pr.produto_id
group by c.nome; 
--- Produtos mais vendidos
select pr.nome_produtos, sum(i.quantidade) As total_vendido
from produtos pr 
join Itens_pedidos i on pr.produto_id = i.produto_id
group by pr.nome_produtos
order by  total_vendido Desc;

--- Vendas por categoria
select pr.categoria, sum(i.quantidade) As total_vendas
from Produtos pr
join Itens_pedidos i on pr.produto_id = i.produto_id
group by pr.categoria;

--- Listar clientes que fizeram o pedido
select distinct c.nome as cliente, c.email
from Clientes c
join Pedidos p on c.cliente_id = p.cliente_id;

--- Detalhe de todos os  pedidos, incluindo itens e valores
select
p.pedido_id,
c.nome as cliente,
pr.nome_produtos as produto,
(i.quantidade * pr.preço) as valor_total,
p.data_pedido
from Pedidos p
join Clientes c on p.cliente_id = c.cliente_id
join Itens_pedidos i on p.pedido_id = i.pedido_id
join Produtos pr on i.produto_id = pr.produto_id
order by p.data_pedido;

--- Clientes coom maior valor gastos
select c.nome as Clientes,
sum( pr.preço * i.quantidade) as total_gasto
from clientes c
Join Pedidos p on c.cliente_id = p.cliente_id
join Itens_pedidos i on p.pedido_id = i.pedido_id
join Produtos pr on i.produto_id = pr.produto_id
group by c.nome
order by total_gasto DESC
limit 5;

--- Receita total
select
date_format(p.data_pedido,'%Y-%m')  as mes,
sum(pr.preço * i.quantidade) as receita_total
from Pedidos p
join Itens_pedidos i on p.pedido_id = i.pedido_id
join Produtos pr on i.produto_id = pr.produto_id
group by DATE_FORMAT(p.data_pedido, '%Y-%m')
order by mes;

--- Produto mais vendido em termos de quantidade

select
    pr.nome_produtos,
    SUM(i.quantidade) as quantidade_total
from Produtos pr
join Itens_pedidos i on pr.produto_id = i.produto_id
group by pr.nome_produtos
order by quantidade_total desc
LIMIT 5;

---  Receita total por cliente
SELECT 
    c.nome AS cliente,
    SUM(pr.preço * i.quantidade) AS receita_total
FROM Clientes c
JOIN Pedidos p ON c.cliente_id = p.cliente_id
JOIN Itens_pedidos i ON p.pedido_id = i.pedido_id
JOIN Produtos pr ON i.produto_id = pr.produto_id
GROUP BY c.nome
ORDER BY receita_total DESC;

--- Produtos que nunca foram vendidos
SELECT 
    pr.nome_produtos
FROM Produtos pr
LEFT JOIN Itens_pedidos i ON pr.produto_id = i.produto_id
WHERE i.produto_id IS NULL;




