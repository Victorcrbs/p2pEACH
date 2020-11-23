
# - Contexto   
Dado('que criei um novo anúncio') do
    anuncio = Anuncio.new
    usuario = Usuario.order("id").last
    anuncio.item = "Teste"
    anuncio.horário = "10h-14h"
    anuncio.descrição = "Esse é um teste"
    anuncio.tags = "teste"
    anuncio.usuario_id = usuario.id
    anuncio.tipo = "emprestimo"
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