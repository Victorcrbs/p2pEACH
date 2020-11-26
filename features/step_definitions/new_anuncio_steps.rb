Dado('que estou na página de novo anuncio') do
  visit '/anuncios/new'
end

Quando('clico em Save Anuncio') do
  click_on "Save Anuncio"
end

Então('o anuncio deve ter sido salvo no banco de dados') do
  anuncio = Anuncio.order("id").last
  usuario = Usuario.order("id").last
  expect(anuncio.item).to eq("Livro de TADI")
  expect(anuncio.horário).to eq("13-14h")
  expect(anuncio.descrição).to eq("Sexta edição")
  expect(anuncio.tags).to eq("TADI")
  expect(anuncio.usuario_id).to eq(usuario.id)
end

Quando('eu preencher as informações do anúncio') do
  fill_in "Item", :with => "Teste"
  fill_in "Horário", :with => "10h-14h"
  fill_in "Descrição", :with => "Esse é um teste"
  fill_in "Tags", :with => "teste"
  choose('anuncio[tipo]', option: "emprestimo")
end

Dado('que criei um novo anúncio') do
  anuncio = Anuncio.new
  usuario = Usuario.order("id").last
  anuncio.item = "Teste"
  anuncio.horário = "10h-14h"
  anuncio.descrição = "Esse é um teste"
  anuncio.tags = "teste"
  anuncio.usuario_id = usuario.id
  anuncio.tipo = "emprestimo"
  anuncio.imagens = [fixture_file_upload(File.join(Rails.root, 'public', 'anuncio.jpeg'))]
  anuncio.save
end