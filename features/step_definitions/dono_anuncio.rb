
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