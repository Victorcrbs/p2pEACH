#language: pt

Funcionalidade: Criar anúncios
Como usuário
Eu quero cadastrar o nome de um objeto, um horário que eu esteja disponível, deixar uma descrição que ache importante e tags relacionadas com meu objeto
De modo que eu consiga disponibilizar, de forma fácil de encontrar e identificar, um item que desejo emprestar.

Cenário: Armazenar dados do formulário
Dado que estou na tela de criar anúncios
Quando preencho o campo "Item" com "caneca"
E preencho o campo "Descrição" com "500 ml, um pouco amassada rsrs"
E preencho o campo "Horário" com "16-20h"
E preencho o campo "Tags" com "#canecaDASI #bandeco"
E clico em "Save anuncio"
Então meu anuncio está salvo no banco de dados

Cenário: Localizar meu post
Dado que estou na tela de anúncios
Quando termino de postar 
Então vejo meu anúncio na página anuncios