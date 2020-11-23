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
Quando preencho o campo "Tipo" com "emprestimo"
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
Quando preencho o campo "Tipo" com "solicitacao"
E clico em Save Anuncio
Então o anuncio deve ter sido salvo no banco de dados
E deverei ver o anuncio na página de listagem de anuncios de itens solicitados


