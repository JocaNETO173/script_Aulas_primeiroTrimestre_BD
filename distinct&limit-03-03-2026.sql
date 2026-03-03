create schema sucos_vendas;

select * from tabela_de_produtos where sabor = 'manga' and not (tamanho = '470 ml');

select * from tabela_de_produtos
where sabor in ('manga', 'laranja');

select cidade, idade from tabela_de_clientes
where cidade in ('Rio de Janeiro', 'São Paulo')
and idade >= 20;

SELECT DISTINCT EMBALAGEM, TAMANHO FROM tabela_de_produtos;

select distinct embalagem, tamanho from tabela_de_produtos where sabor = 'laranja';


select distinct * from tabela_de_produtos where sabor = 'laranja';

-- quais os barros da cidade do rio de janeiro possuem clientes? --
select distinct bairro, cidade, estado from tabela_de_clientes where cidade = 'Rio de Janeiro';

select * from tabela_de_produtos limit 25,5;

-- obtenha as 10 primeiras vendas do dia 01/01/2017

select * from notas_fiscais where data_venda = '2017-01-01' limit 5,10;
