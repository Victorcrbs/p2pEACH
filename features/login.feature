#language: pt

Funcionalidade: Login
Como usuário 
Eu quero poder fazer login em minha conta
Para que possa acessá-la e interagir com a aplicação com tal identidade

Cenário: Login e logout com sucesso
Dado que estou na tela de login
Quando preencho o campo "Email" com "billybob@usp.br"
E preencho o campo "Password" com "senha"
E clico em "Login"
Então deverei ver "Billy Bob" na navbar
Quando clico em "LOGOUT"
Então deverei ver "LOGIN" na navbar

Cenário: Conta não existe
Dado que estou na tela de login
Quando preencho o campo "Email" com "marymay@usp.br"
E preencho o campo "Password" com "mm123"
E clico em "Login"
Então deverei ver o aviso "Email ou senha é inválida."