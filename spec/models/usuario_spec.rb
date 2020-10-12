require 'rails_helper'
require 'spec_helper'
RSpec.describe Usuario, type: :model do
  it 'invalido sem nome' do
    usuario = Usuario.new
    usuario.nusp = "01234567"
    usuario.senha = "senha"
    usuario.numero = "912345678"
    expect(usuario).not_to be_valid
  end
  it 'invalido sem nusp' do
    usuario = Usuario.new
    usuario.nome = "Joe Bob"
    usuario.senha = "senha"
    usuario.numero = "912345678"
    expect(usuario).not_to be_valid
  end
  it 'invalido sem senha' do
    usuario = Usuario.new
    usuario.nusp = "01234567"
    usuario.nome = "Joe Bob"
    usuario.numero = "912345678"
    expect(usuario).not_to be_valid
  end
  it 'invalido sem numero' do
    usuario = Usuario.new
    usuario.nusp = "01234567"
    usuario.senha = "senha"
    usuario.nome = "Joe Bob"
    expect(usuario).not_to be_valid
  end
end
