Quando('adicionar uma imagem') do
  page.attach_file(File.join(Rails.root, 'public', 'anuncio.jpeg')) do
    page.find("#imagem_anuncio_button").click
  end
end
  
Então('ele deve ter sido salvo no banco de dados com foto') do
  anuncio = Anuncio.order("id").last
  usuario = Usuario.order("id").last
  expect(anuncio.imagens).not_to be_empty
end
  
Então('deverei ver o anúncio com foto na página do anúncio') do
  anuncio = Anuncio.order("id").last
  visit ''+anuncio.id.to_s+'/'

  expect(page).to have_css("img[src*='anuncio.jpeg']")
end

  
Então('ele deve ter sido salvo no banco de dados sem foto') do
  anuncio = Anuncio.order("id").last
  usuario = Usuario.order("id").last
  expect(anuncio.imagens).to be_empty
end
  
Então('deverei ver o anúncio sem foto na página do anúncio') do
  anuncio = Anuncio.order("id").last
  visit ''+anuncio.id.to_s+'/'
  
  expect(page).to have_css("img[src*='anunciosemimagem']")
end

Então('a página deve me mostrar uma foto do item') do
  visit 'anuncios'

  expect(page).to have_css("img[src*='anuncio.jpeg']")
end