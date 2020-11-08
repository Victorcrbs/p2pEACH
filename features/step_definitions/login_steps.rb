Dado ('que estou na tela de login') do
    usuario = Usuario.new
    usuario.nome = "Billy"
    usuario.snome = "Bob"
    usuario.email = "billybob@usp.br"
    usuario.password = "senha"
    usuario.fone = "912345678"
    usuario.save

    visit 'sessions/new'
end
Então ('deverei ver {string} na navbar') do |string|
    expect(page).to have_content(string)
end