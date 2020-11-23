#language: pt

Funcionalidade: Anúcios são criados por usuários

Como dono de anúncio,
quero que minhas informações de contato fiquem disponíveis quando eu fizer um anúncio,
para que a pessoa interessada possa me contatar por email, ou telefone e saiba meu nome.

Como usuário,
quero anúncios pertençam a seus criadores
para que consiga entrar em contato com eles.

Contexto: Logado e anúncio criado
Dado que estou logado na conta de Billy Bob
E que criei um novo anúncio

Cenário: Visualizar anúncio
Dado que estou na página de listagens de anúncio
Quando clicar em um anúncio
Então a página deve me mostrar as informações do anúncio e do dono do anúncio