/* O volume_de_compra (tabela_de_clientes) é a quantidade máxima (L)
que um cliente pode comprar no mês.
A quantidade (itens_notas_fiscais) é
o campo que representa a quantidade do produto comprado.
A partir da comparação do volume de compras e da quantidade é possível dizer
se as vendas do mês foram válidas ou inválidas. 
*/

select * from tabela_de_clientes;

select TP.SABOR, month(NF.DATA_VENDA) as MÊS_VENDA, INF.QUANTIDADE
from tabela_de_produtos as TP
inner join itens_notas_fiscais as INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais as NF
ON NF.NUMERO = INF.NUMERO
;

# Alterar coluna de data
select TP.SABOR, DATE_FORMAT(NF.DATA_VENDA, "%Y - %m") as DATA_VENDA, INF.QUANTIDADE
from tabela_de_produtos as TP
inner join itens_notas_fiscais as INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais as NF
ON NF.NUMERO = INF.NUMERO
;