#language: pt

Funcionalidade: Página de Perfil
Como usuário 
Eu quero poder acessar minha página de perfil e manipulá-la
Para que possa ter controle sobre dados particulares a mim

Cenário: Acessar página de perfil e modificar dados
Dado que estou logado na conta de Billy Bob
Quando clico em "Billy Bob"
Então devo estar na página de perfil
Quando clico em "Editar dados"
E preencho o campo "Nome" com "Bill"
E clico em "Update Usuario"
Então seu nome deve ter sido alterado para "Bill Bob"