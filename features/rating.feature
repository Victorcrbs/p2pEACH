#language: pt

Funcionalidade: Criação das avaliações

Como usuário
eu quero poder deixar uma avaliação de 0-10 que descreve a qualidade da interação que tive com um usuário
de modo que eu consiga avaliar como foi a qualidade do processo empréstimo de empréstimo com um outro usuário

Cenário: Criação de uma avaliação
Dado que estou na tela de avaliação
Quando preencho o campo "Nome" com "Bob"
E preencho o campo "Nota" com "8"
E clico em Save Rating
Então a avaliação deve ter sido salva no banco de dados

Cenário: Avaliação sem Nome
Dado que estou na tela de avaliação
Quando deixo o campo "Nome" vazio
E preencho o campo "Nota" com "8"
E clico em Save Rating
Então deverei ver o aviso "Nome can't be blank"

Cenário: Avaliação com nota sem ser um número 
Dado que estou na tela de avaliação
Quando preencho o campo "Nome" com "Bob"
E preencho o campo "Nota" com "ABC"
E clico em Save Rating
Então deverei ver o aviso "Nota is not a number"

Cenário: Avaliação com nota > 10
Dado que estou na tela de avaliação
Quando preencho o campo "Nome" com "Bob"
E preencho o campo "Nota" com "11"
E clico em Save Rating
Então deverei ver o aviso "Nota must be less than or equal to 10"


Cenário: Avaliação com nota < 0
Dado que estou na tela de avaliação
Quando preencho o campo "Nome" com "Bob"
E preencho o campo "Nota" com "-1"
E clico em Save Rating
Então deverei ver o aviso "Nota must be greater than or equal to 0"

