#language: pt

Funcionalidade: Responder
Como usuário
quero poder responder algum comentário
para que eu possa trocar informações precisas, ter retorno e vice versa.

Cenário: postar um comentário 
Dado que estou na página do Anuncio criado
Quando preencho o campo "Name" com "Cláudio de biotec"
Quando preencho o campo "Body" com "Posso te encontrar na cantina do CB 16h?"
E clico no botao Create Comment
Então devo ver meu comentário e o botão de responder
