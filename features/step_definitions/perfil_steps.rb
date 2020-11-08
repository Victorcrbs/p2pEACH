Dado ('que estou logado na conta de Billy Bob') do
    usuario = Usuario.new
    usuario.nome = "Billy"
    usuario.snome = "Bob"
    usuario.email = "billybob@usp.br"
    usuario.password = "senha"
    usuario.fone = "912345678"
    usuario.save
    
    visit 'sessions/new'
    fill_in 'Email', :with => 'billybob@usp.br'
    fill_in 'Password', :with => 'senha'
    click_on 'Login'
end

Então ('devo estar na página de perfil') do
    expect(page).to have_current_path("/usuarios/1")
end

Então ('seu nome deve ter sido alterado para {string}') do |string|
    expect(page).to have_content("Bill Bob")
end