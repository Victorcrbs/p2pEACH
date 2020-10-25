#language: pt

Funcionalidade: Cadastro
Como usuário 
Eu quero poder me cadastrar
Para que possa participar de empréstimos por meio da aplicação

Cenário: Cadastro com sucesso
Dado que estou na tela de cadastro
Quando preencho o campo "Nome" com "Billy"
E preencho o campo "Snome" com "Bob"
E preencho o campo "Email" com "billybob@usp.br"
E preencho o campo "Password" com "senha"
E preencho o campo "Password confirmation" com "senha"
E preencho o campo "Fone" com "912345678"
E clico em "Create Usuario"
Então devo ter sido salvo no banco de dados
E deverei ver o aviso "Cadastrado com sucesso."

Cenário: Cadastro sem email
Dado que estou na tela de cadastro
Quando preencho o campo "Nome" com "Billy"
E preencho o campo "Snome" com "Bob"
E preencho o campo "Password" com "senha"
E preencho o campo "Password confirmation" com "senha"
E preencho o campo "Fone" com "912345678"
E deixo o campo "Email" vazio
E clico em "Create Usuario"
Então deverei ver o aviso "Email can't be blank"

Cenário: Cadastro sem senha
Dado que estou na tela de cadastro
Quando preencho o campo "Nome" com "Billy"
E preencho o campo "Snome" com "Bob"
E preencho o campo "Email" com "billybob@usp.br"
E preencho o campo "Fone" com "912345678"
E deixo o campo "Password" vazio
E clico em "Create Usuario"
Então deverei ver o aviso "Password can't be blank"

Cenário: Cadastro com senhas diferentes
Dado que estou na tela de cadastro
Quando preencho o campo "Nome" com "Billy"
E preencho o campo "Snome" com "Bob"
E preencho o campo "Email" com "billybob@usp.br"
E preencho o campo "Password" com "senha"
E preencho o campo "Password confirmation" com "senhaa"
E preencho o campo "Fone" com "912345678"
E clico em "Create Usuario"
E deverei ver o aviso "Password confirmation doesn't match Password"