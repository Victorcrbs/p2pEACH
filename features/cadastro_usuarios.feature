#language: pt

Funcionalidade: Cadastrar usuários
Como usuário
Para que eu possa utilizar as funcionalidades do aplicativo
Eu quero me cadastrar como usuário

Cenário: Cadastro de usuário com sucesso
Dado que estou na página de cadastro
Quando preencho o campo "Nome" com "Joe Bob"
Quando preencho o campo "Nusp" com "01234567"
Quando preencho o campo "Senha" com "senha"
Quando preencho o campo "Numero" com "912345678"
E clico em salvar
Então ele deve ter sido salvo no banco de dados
E deverei ver o usuário na página de listagem de usuários

Cenário: Nome não informado
Dado que estou na página de cadastro
Quando preencho o campo "Nusp" com "01234567"
Quando preencho o campo "Senha" com "senha"
Quando preencho o campo "Numero" com "912345678"
E deixo o campo "Nome" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar o nome!"
 
 Cenário: Nusp não informado
Dado que estou na página de cadastro
Quando preencho o campo "Nome" com "Joe Bob"
Quando preencho o campo "Senha" com "senha"
Quando preencho o campo "Numero" com "912345678"
E deixo o campo "Nusp" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar seu número USP!"
 
 Cenário: Senha não informada
Dado que estou na página de cadastro
Quando preencho o campo "Nusp" com "01234567"
Quando preencho o campo "Nome" com "Joe Bob"
Quando preencho o campo "Numero" com "912345678"
E deixo o campo "Senha" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar sua senha!"
 
 Cenário: Numero não informado
Dado que estou na página de cadastro
Quando preencho o campo "Nusp" com "01234567"
Quando preencho o campo "Senha" com "senha"
Quando preencho o campo "Nome" com "Joe Bob"
E deixo o campo "Numero" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar seu número de telefone!"
 