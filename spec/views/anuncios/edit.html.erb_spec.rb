require 'rails_helper'

RSpec.describe "anuncios/edit", type: :view do
  before(:each) do
    usuario = Usuario.new
    usuario.nome = "Billy"
    usuario.snome = "Bob"
    usuario.email = "billybob@usp.br"
    usuario.password = "senha"
    usuario.fone = "912345678"
    usuario.save

    @anuncio = assign(:anuncio, Anuncio.create!(
      item: "MyString",
      descrição: "MyString",
      horário: "10h",
      tags: "MyStringTag",
      tipo: "MyStringTipo",
      usuario_id: usuario.id
    ))
  end

  it "renders the edit anuncio form" do
    render

    assert_select "form[action=?][method=?]", anuncio_path(@anuncio), "post" do

      assert_select "input[name=?]", "anuncio[item]"

      assert_select "input[name=?]", "anuncio[horário]"

      assert_select "input[name=?]", "anuncio[tags]"

      assert_select "input[name=?]", "anuncio[tipo]"
    end
  end
end
