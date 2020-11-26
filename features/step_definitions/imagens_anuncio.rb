Quando('adicionar uma imagem') do
  fill_in "Imagens", :with => fixture_file_upload(File.join(Rails.root, 'public', 'anuncio.jpeg'))
end
  
Então('ele deve ter sido salvo no banco de dados com foto') do
  anuncio = Anuncio.order("id").last
  usuario = Usuario.order("id").last
  expect(anuncio.imagens).to not_be_empty
end
  
Então('deverei ver o anúncio com foto na página do anúncio') do
  anuncio = Anuncio.order("id").last
  visit 'anuncios/'+anuncio.id.to_s+'/'

  expect(page).to have_css("img[src*='anuncio.jpeg']")
end

  
Então('ele deve ter sido salvo no banco de dados sem foto') do
  anuncio = Anuncio.order("id").last
  usuario = Usuario.order("id").last
  expect(anuncio.imagens).to be_empty
end
  
Então('deverei ver o anúncio sem foto na página do anúncio') do
  anuncio = Anuncio.order("id").last
  visit 'anuncios/'+anuncio.id.to_s+'/'

  expect(page).to have_css("img[src*='anuncio_sem_imagem.jpeg']")
end

Então('a página deve me mostrar os dados do anúncio e uma foto do item') do
  visit 'anuncios'

  expect(page).to have_css("img[src*='anuncio.jpeg']")
end