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

Dado('que criei um novo anúncio com duas imagens') do
  anuncio = Anuncio.new
  usuario = Usuario.order("id").last
  anuncio.item = "Teste"
  anuncio.horário = "10h-14h"
  anuncio.descrição = "Esse é um teste"
  anuncio.tags = "teste"
  anuncio.usuario_id = usuario.id
  anuncio.tipo = "emprestimo"
  anuncio.imagens = [fixture_file_upload(File.join(Rails.root, 'public', 'anuncio.jpeg')),fixture_file_upload(File.join(Rails.root, 'public', 'index.jpeg'))]
  anuncio.save
end

Quando('clicar para deletar uma imagem') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('a imagem deve ter sido excluída do banco de dados') do
  anuncio = Anuncio.order("id").last
  (0...anuncio.imagens.count).each do |imagem|
    expect(url_for(anuncio.imagens[imagem])).not_to have_content("index.jpeg")
  end
end

Então('não deverei ver a imagem na página do anúncio') do
  expect(page).not_to have_css("img[src*='index.jpeg']")
end
