Dado ('que estou na tela de anúncios') do
    visit 'anuncios'
end
Então('meu anuncio está salvo no banco de dados') do
    anuncio = Anuncio.order("id").last
    expect( anuncio.item).to eq('caneca')
    expect( anuncio.descrição).to eq('500 ml, um pouco amassada rsrs') 
    expect(anuncio.horário).to eq('16-20h') 
    expect( anuncio.tags).to eq('#canecaDASI #bandeco')
end