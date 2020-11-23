#language: pt

Funcionalidade: Tipos de anuncio (emprestimo e solicitacao)

Como usuário,
quando for criar um anúncio, quero selecionar se meu anuncio vai ser de disponibilidade para emprestar ou solicitação de item,
para que possam encontrar meu anúncio na listagem correta.

Cenário: Cadastro Anúncio de Empréstimo
Dado que estou logado na conta de Billy Bob
E que estou na página de novo anuncio
Quando preencho o campo "Item" com "Livro de TADI"
Quando preencho o campo "Horário" com "13-14h"
Quando preencho o campo "Descrição" com "Sexta edição"
Quando preencho o campo "Tags" com "TADI"
Quando escolho a opcao "emprestimo" no radio button
E clico em Save Anuncio
Então o anuncio deve ter sido salvo no banco de dados
E deverei ver o anuncio na página de listagem de anuncios para empréstimo

Cenário: Cadastro Anúncio de Solicitação
Dado que estou logado na conta de Billy Bob
E que estou na página de novo anuncio
Quando preencho o campo "Item" com "Livro de TADI"
Quando preencho o campo "Horário" com "13-14h"
Quando preencho o campo "Descrição" com "Sexta edição"
Quando preencho o campo "Tags" com "TADI"
Quando escolho a opcao "solicitacao" no radio button
E clico em Save Anuncio
Então o anuncio deve ter sido salvo no banco de dados
E deverei ver o anuncio na página de listagem de anuncios de itens solicitados

Cenário: Editar Anúncio de Empréstimo
Dado que estou logado na conta de Billy Bob
E que criei um novo anúncio de "emprestimo"
E que estou na página de editar anuncio
Quando preencho o campo "Item" com "Mudei as informações"
Quando preencho o campo "Horário" com "13-15h"
Quando preencho o campo "Descrição" com "Quinta edição"
Quando preencho o campo "Tags" com "ESI"
Quando escolho a opcao "solicitacao" no radio button
E clico em Update Anuncio
Então deverei ver o anuncio "Mudei as informações" na página de listagem de anuncios de itens de "solicitacoes"

Cenário: Editar Anúncio de Solicitação
Dado que estou logado na conta de Billy Bob
E que criei um novo anúncio de "solicitacao"
E que estou na página de editar anuncio
Quando preencho o campo "Item" com "Mudei as informações"
Quando preencho o campo "Horário" com "13-15h"
Quando preencho o campo "Descrição" com "Quinta edição"
Quando preencho o campo "Tags" com "ESI"
Quando escolho a opcao "emprestimo" no radio button
E clico em Update Anuncio
Então deverei ver o anuncio "Mudei as informações" na página de listagem de anuncios de itens de "emprestimos"

