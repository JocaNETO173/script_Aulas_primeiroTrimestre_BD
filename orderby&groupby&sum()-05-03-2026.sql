-- hora de utilizar order by --


select * from tabela_de_produtos;
select * from tabela_de_produtos order by PRECO_DE_LISTA; -- crescente é o padrão --
select * from tabela_de_produtos order by PRECO_DE_LISTA ASC;  -- crescente --
select * from tabela_de_produtos order by PRECO_DE_LISTA DESC; -- decrescente --

-- Qual ou quais foram as maiores vendas do produto "linha Refrescante - 1 Litro - Morangi/Limão em QUANTIDADE e PRECO? --]

select * from tabela_de_produtos 
where NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limão';
-- codigo do produto = 1101035 --

select * from itens_notas_fiscais 
where CODIGO_DO_PRODUTO = '1101035'
order by quantidade desc, preco desc;

-- agrupando os resultados (group by) --

select estado, sum(limite_de_credito) as LIMITE_TOTAL
FROM tabela_de_clientes 
group by estado;

select limite_de_credito from tabela_de_clientes;
