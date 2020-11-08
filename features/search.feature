#language: pt

Funcionalidade:  busca de anúncios na página inicial

Como usuário,
 quero que a página principal tenha a função de busca, 
para que eu possa filtrar os resultados que aparecem na página principal com base nos nomes e tags dos objetos cadastrados.

Cenário: Procurando por livro de cálculo
Dado que estou na página principal
Quando preencho o campo "Buscar" com "cálculo"
E clico em "Buscar"
Então resultados relacionados a "cálculo" aparecem

Cenário: Procurando por livro de cálculo
Dado que estou na página principal
Quando preencho o campo "Buscar" com "livro"
E clico em "Buscar"
Então resultados relacionados a "livro" aparecem

Cenário: Procurando por livro de cálculo
Dado que estou na página principal
Quando preencho o campo "Buscar" com "livro de cálculo"
E clico em "Buscar"
Então resultados relacionados a "livro de cálculo" aparecem