Então('deverei ver o anuncio na página de listagem de anuncios para empréstimo') do
    visit 'emprestimos'

    expect(page).to have_content("Objetos para pegar emprestado")
    expect(page).to have_content("Livro de TADI")
end
  
 Então('deverei ver o anuncio na página de listagem de anuncios de itens solicitados') do
    visit 'solicitacoes'

    expect(page).to have_content("Objetos solicitados")
    expect(page).to have_content("Livro de TADI")
end


Dado('que estou na página de editar anuncio') do
    visit 'anuncios/1/edit'
end

Quando('clico em Update Anuncio') do
    click_on "Update Anuncio"
end
  
Então('deverei ver o anuncio {string} na página de listagem de anuncios de itens de {string}') do |string, string2|
    visit string2

    expect(page).to have_content(string)
end

Dado('que criei um novo anúncio de {string}') do |string|
    anuncio = Anuncio.new
    usuario = Usuario.order("id").last
    anuncio.item = "Teste"
    anuncio.horário = "10h-14h"
    anuncio.descrição = "Esse é um teste"
    anuncio.tags = "teste"
    anuncio.usuario_id = usuario.id
    anuncio.tipo = string
    anuncio.save
end


Quando('vou para página de listagens de anúncio') do
    visit 'anuncios'
  end

Então('não deverei ver o anuncio {string} na página de listagem de anuncios') do |string|
    visit 'anuncios'
    expect(page).not_to have_content(string)
end
  