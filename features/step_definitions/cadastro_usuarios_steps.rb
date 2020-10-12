Dado('que estou na página de cadastro') do
    visit 'usuarios/new'
end

Quando ('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

Quando ('clico em salvar') do 
    click_on 'Cadastrar-se'
end

Então ('ele deve ter sido salvo no banco de dados') do
    usuario = Usuario.order("id").last
    expect(usuario.nome).to eq('Joe Bob')
    expect(usuario.nusp).to eq('01234567')
    expect(usuario.senha).to eq('senha')
    expect(usuario.numero).to eq('912345678')
end 

Então ('deverei ver o usuário na página de listagem de usuários') do
    expect(page).to have_content('Joe Bob')
    expect(page).to have_content('01234567')
    expect(page).to have_content('senha')
    expect(page).to have_content('912345678')
end

Quando ('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
end

Então ('deverei ver a mensagem de erro {string}') do |string|
    expect(page).to have_content(string)
end