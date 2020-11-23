Dado('que estou na página do Anuncio') do
  anuncio1= Anuncio.new
  anuncio1.item = "Livro de TADI"
  anuncio1.horário = "13-14h"
  anuncio1.descrição = "Sexta edição"
  anuncio1.tags = "TADI"
  anuncio1.save       

  visit "anuncios/#{anuncio1.id}"
  end
  
  Quando('clico em Create Comment') do
    click_on "Create Comment"
  end
  
  Então('devo ver meu comentário') do
    expect(page).to have_content("Livro de TADI")
      expect(page).to have_content("13-14h")
      expect(page).to have_content("Sexta edição")
      expect(page).to have_content("TADI")
    
    expect(page).to have_content("Cláudio de biotec")
    expect(page).to have_content("Posso te encontrar na cantina do CB 16h?")
  end




