
# - Contexto 
Dado('que estou logado') do
    usuario = Usuario.new
    usuario.nome = "Billy"
    usuario.snome = "Bob"
    usuario.email = "billybob@usp.br"
    usuario.password = "senha"
    usuario.fone = "912345678"
    usuario.save

    visit 'sessions/new'
end
  
Dado('que criei um novo anúncio') do
    anuncio = Anuncio.new
    anuncio.item = "Teste"
    anuncio.horário = "10h-14h"
    anuncio.descrição = "Esse é um teste"
    anuncio.tags = "teste"
    anuncio.save
end
# - Fim Contexto

Dado('que estou na página de listagens de anúncio') do
    visit '/anuncios'
end
  
Quando('clicar em um anúncio') do
    anuncio = Anuncio.order("id").last
    click_on 'Show'
end
  
Então('a página deve me mostrar as informações do anúncio e do dono do anúncio') do
    expect(page).to have_content("Billy Bob")
end