Dado ('que estou na tela de cadastro') do
    visit 'usuarios/new'
end

Então('devo ter sido salvo no banco de dados') do
    usuario = Usuario.order("id").last
    expect(usuario.nome).to eq('Billy')
    expect(usuario.snome).to eq('Bob') 
    expect(usuario.email).to eq('billybob@usp.br') 
end
