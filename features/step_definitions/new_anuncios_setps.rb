Dado('que estou na página de anuncios') do
    visit '/anuncios/new'
  end
  
  Quando('clico em Save Anuncio') do
    click_on "Save Anuncio"
  end
  
  Então('o produto deve ter sido salvo no banco de dados') do
    anuncio = Anuncio.order("id").last
    expect(anuncio.item).to eq("Livro de TADI")
    expect(anuncio.horário).to eq("13-14h")
    expect(anuncio.descrição).to eq("Sexta edição")
    expect(anuncio.tags).to eq("TADI")
  end