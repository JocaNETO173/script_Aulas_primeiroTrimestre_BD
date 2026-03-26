# INNER JOIN



select * from notas_fiscais;

select * from tabela_de_vendedores as TV 
INNER JOIN notas_fiscais as NF
ON TV.MATRICULA  = NF.MATRICULA;

select TV.MATRICULA, TV.NOME, count(*) as TOTAL_NF
from tabela_de_vendedores as TV
inner join notas_fiscais as NF
on TV.MATRICULA  = NF.MATRICULA
group by TV.MATRICULA, TV.NOME;

/* Obtenha o faturamento anual da empresa,
levando em consideração que o valor financeiro das vendas é obtido
pela multiplicação da quantidade pelo preço
*/

select year(NF.DATA_VENDA) as ANO, sum(INF.QUANTIDADE * INF.PRECO) as FATURAMENTO_ANUAL
from itens_notas_fiscais as INF
inner join notas_fiscais as NF
on NF.NUMERO = INF.NUMERO
group by ANO
;