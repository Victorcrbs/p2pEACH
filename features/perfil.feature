#language: pt

Funcionalidade: Página de Perfil
Como usuário 
Eu quero poder acessar minha página de perfil e manipulá-la
Para que possa ter controle sobre dados particulares a mim

Como dono de anúncio,
quero visualizar todos os anúncios que pertencem a mim
para poder ter uma noção melhor do que estou emprestando ou pedindo emprestado.

Cenário: Acessar página de perfil e modificar dados
Dado que estou logado na conta de Billy Bob
Quando clico em "Billy Bob"
Então devo estar na página de perfil
Quando clico em "Editar dados"
E preencho o campo "Nome" com "Bill"
E clico em "Update Usuario"
Então seu nome deve ter sido alterado para "Bill Bob"

Cenário: Listar anuncios do usuário logado
Dado que estou logado na conta de Billy Bob
E que criei um novo anúncio
Quando clico em "Billy Bob"
Então devo estar na página de perfil
E a página deve me mostrar todos os anúncios publicados por mim