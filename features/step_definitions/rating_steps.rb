Dado('que estou na tela de avaliação') do
    visit '/ratings/new'
  end

  Quando('clico em Save Rating') do
    click_on "Save Rating"
  end
  
  Então('a avaliação deve ter sido salva no banco de dados') do
    rating = Rating.order("id").last
    expect(rating.nome).to eq("Bob")
    expect(rating.nota).to eq("8")
  end