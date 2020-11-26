#language: pt

Funcionalidade: Imagens no anúncio
Como um usuário,
quero poder adicionar fotos do item que estou colocando para emprestimo ou solicitando quando cadastrar um anuncio
para que fique claro de qual item se trata e suas características de forma visual.

Como um usuário,
quero poder visualizar uma foto dos itens anunciados na plataforma
para que fique claro de qual item se trata e suas características de forma visual.

Como um usuário,
quero poder visualizar uma imagens já na listagem de itens,
para que eu possa selecionar mais rápido um anúncio.

Contexto:
    Dado que estou logado na conta de Billy Bob

Cenário: Cadastro de anúncio com foto
Dado que estou na página de novo anuncio
Quando eu preencher as informações do anúncio
E adicionar uma imagem
E clico em Save Anuncio
Então ele deve ter sido salvo no banco de dados com foto
E deverei ver o anúncio com foto na página do anúncio

Cenário: Cadastro de anúncio sem foto
Dado que estou na página de novo anuncio
Quando eu preencher as informações do anúncio
#Mas deixar o campo "Foto" vazio
E clico em Save Anuncio
Então ele deve ter sido salvo no banco de dados sem foto
E deverei ver o anúncio sem foto na página do anúncio

Cenário: Listar anuncios
Dado que criei um novo anúncio
Quando vou para página de listagens de anúncio
Então a página deve me mostrar uma foto do item

