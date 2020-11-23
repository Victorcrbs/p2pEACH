#language: pt

Funcionalidade: Criação de anúncios para empréstimo

Como usuário
eu quero cadastrar o nome de um objeto, um horário que eu esteja disponível, deixar uma descrição que ache importante e tags relacionadas com meu objeto
de modo que eu consiga disponibilizar, de forma fácil de encontrar e identificar, um item que desejo emprestar.

Cenário: Criação de um anúncio
Dado que estou logado na conta de Billy Bob
E que estou na página de novo anuncio
Quando preencho o campo "Item" com "Livro de TADI"
Quando preencho o campo "Horário" com "13-14h"
Quando preencho o campo "Descrição" com "Sexta edição"
Quando preencho o campo "Tags" com "TADI"
E clico em Save Anuncio
Então o anuncio deve ter sido salvo no banco de dados