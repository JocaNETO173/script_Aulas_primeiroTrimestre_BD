select embalagem, max(preco_de_lista) as PRECO_MAXIMO from tabela_de_produtos group by embalagem;

select embalagem, count(*) as CONTADOR from tabela_de_produtos  group by embalagem;

# quantos itens de venda existem para o produto '1101035'

select max(quantidade) from itens_notas_fiscais where codigo_do_produto = '1101035';

select count(*) from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035' and quantidade = 99;