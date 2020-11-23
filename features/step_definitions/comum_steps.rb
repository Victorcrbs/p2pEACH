Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2  
end

Quando('clico em {string}') do |string|
    click_on (string)
end

Quando('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
end
  
Então('deverei ver o aviso {string}') do |string|
    expect(page).to have_content(string)
end

Quando('escolho a opcao {string} no radio button') do |string|
    choose('anuncio[tipo]', option: string)
end