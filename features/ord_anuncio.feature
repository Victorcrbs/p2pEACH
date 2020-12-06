
#language: pt

Funcionalidade: Ordenar anúncios

Como usuário
Eu quero poder ordenar a lista de anúncios
Para que possa navegá-la com mais facilidade

Contexto: Existem 3 anúncios na lista
Dado que estou logado na conta de Billy Bob
E que estou na página de novo anuncio
E preencho o campo "Item" com "Abaco"
E preencho o campo "Horário" com "13-14h"
E preencho o campo "Descrição" com "Esqueci calculadora"
E preencho o campo "Tags" com "Matemática"
E escolho a opcao "solicitacao" no radio button "tipo"
E clico em Save Anuncio
E que estou na página de novo anuncio
E preencho o campo "Item" com "Bexiga"
E preencho o campo "Horário" com "10-15h"
E preencho o campo "Descrição" com "Sou cirurgião"
E preencho o campo "Tags" com "Medicina"
E escolho a opcao "emprestimo" no radio button "tipo"
E clico em Save Anuncio
E que estou na página de novo anuncio
E preencho o campo "Item" com "Caneca"
E preencho o campo "Horário" com "15-16h"
E preencho o campo "Descrição" com "Vou esterilizar"
E preencho o campo "Tags" com "Glow"
E escolho a opcao "solicitacao" no radio button "tipo"
E clico em Save Anuncio



Cenário: Ordenar por critérios
Dado que estou na página de anúncios
Quando clico em "Item"
Então os itens devem aparecer na ordem "Caneca", "Bexiga" e "Abaco"
Quando clico em "Horário"
Então os itens devem aparecer na ordem "Bexiga", "Abaco" e "Caneca"
Quando clico em "Descrição"
Então os itens devem aparecer na ordem "Abaco", "Bexiga" e "Caneca"
Quando clico em "Tags"
Então os itens devem aparecer na ordem "Caneca", "Abaco" e "Bexiga"
