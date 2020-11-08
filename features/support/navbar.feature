#language: pt

Funcionalidade:  busca de anúncios na página inicial

Como usuário 
Quero poder transitar entre as páginas "Home" e "Anúncios" por uma navbar
Para não precisar reescrever a url

Cenário: ir de Home para Anúncios
Dado que estou na tela Home
Quando clico em "Anúncios"
Então vou para a tela Anúncios

Cenário: ir de Anúncios para Home
Dado que estou na tela Anúncios
Quando clico em "Home"
Então vou para a tela Home