require 'rails_helper'

RSpec.describe "Foto de perfil", type: :request do

    describe "Submeter uma foto de perfil" do
        it "mostra a foto escolhida na barra de navegação" do
            @usuario = Usuario.new
            @usuario.nome = "Billy"
            @usuario.snome = "Bob"
            @usuario.email = "billybob@usp.br"
            @usuario.password = "senha"
            @usuario.fone = "912345678"
            @usuario.avatar = fixture_file_upload(File.join(Rails.root, 'public', 'index.jpeg'))
            @usuario.save
            visit 'sessions/new'
            fill_in 'Email', with: 'billybob@usp.br'
            fill_in 'Password', with: 'senha'
            click_on 'Login'

            expect(page).to have_css("img[src*='index.jpeg']")
        end
    end
    describe "Não submeter uma foto de perfil" do
        it "mostra a foto padrão na barra de navegação" do
            @usuario = Usuario.new
            @usuario.nome = "Billy"
            @usuario.snome = "Bob"
            @usuario.email = "billybob@usp.br"
            @usuario.password = "senha"
            @usuario.fone = "912345678"
            @usuario.save
            visit 'sessions/new'
            fill_in 'Email', with: 'billybob@usp.br'
            fill_in 'Password', with: 'senha'
            click_on 'Login'

            expect(page).to have_css("img[src*='default_pfp-d654e15f6fc4d0bd1be77ade9ab41f50e16e327b9365d87f971b1f106b6fa1ef.jpg']")
        end
    end
end