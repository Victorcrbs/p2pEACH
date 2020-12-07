  
Dado("que tenho um anuncio cadastrado") do 
    usuario = Usuario.new
    usuario.nome = "Billy"
    usuario.snome = "Bob"
    usuario.email = "billybob@usp.br"
    usuario.password = "senha"
    usuario.fone = "912345678"
    usuario.save
  
    anuncio1= Anuncio.new
    usuario = Usuario.order("id").last
    anuncio1.item = "Livro de TADI"
    anuncio1.horário = "13-14h"
    anuncio1.descrição = "Sexta edição"
    anuncio1.tags = "TADI"
    anuncio1.usuario_id = usuario.id
    anuncio1.tipo = "emprestimo"
    anuncio1.save       
    visit "/anuncios"
    
  end
  
  
  Quando("preencho o campo de busca com {string}") do |value|
  field = "Search"
  fill_in field, :with => value
end

  Quando("clico no botão {string}") do |button|
    click_on button
  end
  
  Então("encontromeu objeto na página") do 
    expect(page).to have_content("Livro de TADI")
  end
  
  Então("não encontro meu objeto na página") do
   
    expect(page).not_to have_content("Caneca do DASI")
  end