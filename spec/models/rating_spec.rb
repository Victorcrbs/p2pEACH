require 'rails_helper'

RSpec.describe Rating, type: :model do
  it "Criando rating válido" do
    rating = Rating.new
    rating.nome = "Teste"
    rating.nota = 10
    rating.save

    rating2 = Rating.order("id").last
    expect(rating2.nome).to eq 'Teste'
    expect(rating2.nota).to eq 10.to_s
  end

  it "Inválido sem nome" do
    rating = Rating.new
    rating.nome = "Teste"
    rating.save

    expect(rating).not_to be_valid
  end
  
  it "Inválido sem nota" do
    rating = Rating.new
    rating.nota = 0
    rating.save

    expect(rating).not_to be_valid
  end

  it "Nota inválida - não é número" do
    rating = Rating.new
    rating.nome = "Teste"
    rating.nota = "String"
    rating.save
    
    expect(rating).not_to be_valid
  end

  it "Nota inválida - maior que 10" do
    rating = Rating.new
    rating.nome = "Teste"
    rating.nota = 15
    rating.save
    
    expect(rating).not_to be_valid
  end

  it "Nota inválida - menor que 0" do
    rating = Rating.new
    rating.nome = "Teste"
    rating.nota = -15
    rating.save
    
    expect(rating).not_to be_valid
  end
end
