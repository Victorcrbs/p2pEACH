require 'rails_helper'

RSpec.describe Usuario, type: :model do
  it "Criando usuário válido" do
    usuario = Usuario.new
    usuario.nome = "Billy"
    usuario.snome = "Bob"
    usuario.email = "billybob@usp.br"
    usuario.password = "senha"
    usuario.fone = "912345678"
    usuario.save

    usuario2 = Usuario.order("id").last
    expect(usuario2.nome).to eq 'Billy'
    expect(usuario2.snome).to eq 'Bob'
    expect(usuario2.email).to eq 'billybob@usp.br'
    expect(usuario2.fone).to eq '912345678'
  end

  it "Inválido sem nome" do
    usuario = Usuario.new
    usuario.snome = "Bob"
    usuario.email = "billybob@usp.br"
    usuario.password = "senha"
    usuario.fone = "912345678"
    usuario.save

    expect(usuario).not_to be_valid
  end
  
  it "Inválido sem snome" do
    usuario = Usuario.new
    usuario.nome = "Billy"
    usuario.email = "billybob@usp.br"
    usuario.password = "senha"
    usuario.fone = "912345678"
    usuario.save

    expect(usuario).not_to be_valid
  end

  it "Inválido sem email" do
    usuario = Usuario.new
    usuario.nome = "Billy"
    usuario.snome = "Bob"
    usuario.password = "senha"
    usuario.fone = "912345678"
    usuario.save

    expect(usuario).not_to be_valid
  end

  it "Inválido sem fone" do
    usuario = Usuario.new
    usuario.nome = "Billy"
    usuario.snome = "Bob"
    usuario.email = "billybob@usp.br"
    usuario.password = "senha"
    usuario.save

    expect(usuario).not_to be_valid
  end

  it "Inválido sem senha" do
    usuario = Usuario.new
    usuario.nome = "Billy"
    usuario.snome = "Bob"
    usuario.email = "billybob@usp.br"
    usuario.fone = "912345678"
    usuario.save

    expect(usuario).not_to be_valid
  end
end
