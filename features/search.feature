#language: pt

Funcionalidade: Função de busca de anúncios na página de anúncios
Como usuario
quero que a página principal tenha a função de busca
para que eu possa filtrar os resultados que aparecem na página de anúncios com base nos nomes e tags dos objetos cadastrados.

Cenário: Buscar um objeto disponível
  Dado que tenho um anuncio cadastrado
 
  Quando preencho o campo de busca com "Livro de TADI"
  E clico no botão "Buscar"
  Então encontromeu objeto na página

Cenário: Buscar um objeto não existente
  Dado que tenho um anuncio cadastrado
 
  Quando preencho o campo de busca com "Caneca do DASI"
  E clico no botão "Buscar"
  Então não encontro meu objeto na página