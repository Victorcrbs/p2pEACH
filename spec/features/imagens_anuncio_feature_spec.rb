require 'rails_helper'

RSpec.describe "Imagens no anuncio", type: :request do

    describe "Quando adiciona foto a anúncio" do
        it "mostra a foto adicionada na página do anúncio" do
            usuario = Usuario.new
            usuario.nome = "Billy"
            usuario.snome = "Bob"
            usuario.email = "billybob@usp.br"
            usuario.password = "senha"
            usuario.fone = "912345678"
            usuario.save

            usuario = Usuario.order("id").last
            anuncio = Anuncio.new
            anuncio.item = "Teste"
            anuncio.horário = "10h-14h"
            anuncio.descrição = "Esse é um teste"
            anuncio.tags = "teste"
            anuncio.usuario_id = usuario.id
            anuncio.tipo = "emprestimo"
            anuncio.imagens = [fixture_file_upload(File.join(Rails.root, 'public', 'anuncio.jpeg'))]
            anuncio.save

            anuncio2 = Anuncio.order("id").last
            visit 'anuncios/'+anuncio2.id.to_s
            expect(page).to have_css("img[src*='anuncio.jpeg']")
        end
        it "mostra a foto adicionada na página de listagem de anúncios" do
            usuario = Usuario.new
            usuario.nome = "Billy"
            usuario.snome = "Bob"
            usuario.email = "billybob@usp.br"
            usuario.password = "senha"
            usuario.fone = "912345678"
            usuario.save

            usuario = Usuario.order("id").last
            anuncio = Anuncio.new
            anuncio.item = "Teste"
            anuncio.horário = "10h-14h"
            anuncio.descrição = "Esse é um teste"
            anuncio.tags = "teste"
            anuncio.usuario_id = usuario.id
            anuncio.tipo = "emprestimo"
            anuncio.imagens = [fixture_file_upload(File.join(Rails.root, 'public', 'anuncio.jpeg'))]
            anuncio.save

            visit 'anuncios'
            expect(page).to have_css("img[src*='anuncio.jpeg']")
        end
    end
    describe "Quando não adiciona foto a anúncio" do
        it "mostra a foto padrão na página do anúncio" do
            usuario = Usuario.new
            usuario.nome = "Billy"
            usuario.snome = "Bob"
            usuario.email = "billybob@usp.br"
            usuario.password = "senha"
            usuario.fone = "912345678"
            usuario.save

            usuario = Usuario.order("id").last
            anuncio = Anuncio.new
            anuncio.item = "Teste"
            anuncio.horário = "10h-14h"
            anuncio.descrição = "Esse é um teste"
            anuncio.tags = "teste"
            anuncio.usuario_id = usuario.id
            anuncio.tipo = "emprestimo"
            anuncio.imagens = []
            anuncio.save

            anuncio2 = Anuncio.order("id").last
            visit 'anuncios/'+anuncio2.id.to_s
            expect(page).to have_css("img[src*='anunciosemimagem']")
        end
        it "mostra a foto padrão na página de listagem de anúncios" do
            usuario = Usuario.new
            usuario.nome = "Billy"
            usuario.snome = "Bob"
            usuario.email = "billybob@usp.br"
            usuario.password = "senha"
            usuario.fone = "912345678"
            usuario.save

            usuario = Usuario.order("id").last
            anuncio = Anuncio.new
            anuncio.item = "Teste"
            anuncio.horário = "10h-14h"
            anuncio.descrição = "Esse é um teste"
            anuncio.tags = "teste"
            anuncio.usuario_id = usuario.id
            anuncio.tipo = "emprestimo"
            anuncio.imagens = []
            anuncio.save

            visit 'anuncios'
            expect(page).to have_css("img[src*='anunciosemimagem']")
        end
    end
end