#language: pt

Funcionalidade: Foto de perfil
Como usuário 
Eu quero poder associar uma foto ao meu perfil 
Para que possa eu possa ser mais distinguível de outras pessoas

Cenário: Foto de perfil padrão
Dado que Billy Bob se cadastrou sem carregar foto de perfil
E está logado
Então deverá estar associado à foto de perfil padrão 

Cenário: Foto de perfil carregada
Dado que Billy Bob se cadastrou tendo carregado foto de perfil
E está logado
Então deverá estar associado à foto de perfil escolhida