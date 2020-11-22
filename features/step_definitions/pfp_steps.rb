Dado ('que Billy Bob se cadastrou sem carregar foto de perfil') do
    usuario = Usuario.new
    usuario.nome = "Billy"
    usuario.snome = "Bob"
    usuario.email = "billybob@usp.br"
    usuario.password = "senha"
    usuario.fone = "912345678"
    usuario.save
end
Quando ('está logado') do
    visit 'sessions/new'
    fill_in 'Email', :with => 'billybob@usp.br'
    fill_in 'Password', :with => 'senha'
    click_on 'Login'
end
Então ('deverá estar associado à foto de perfil padrão') do
    expect(page).to have_css("img[src*='default_pfp-d654e15f6fc4d0bd1be77ade9ab41f50e16e327b9365d87f971b1f106b6fa1ef.jpg']")
end
Dado ('que Billy Bob se cadastrou tendo carregado foto de perfil') do
    usuario = Usuario.new
    usuario.avatar = fixture_file_upload(File.join(Rails.root, 'public', 'index.jpeg'))
    usuario.nome = "Billy"
    usuario.snome = "Bob"
    usuario.email = "billybob@usp.br"
    usuario.password = "senha"
    usuario.fone = "912345678"
    usuario.save
end
Então ('deverá estar associado à foto de perfil escolhida') do
    expect(page).to have_css("img[src*='index.jpeg']")
end
