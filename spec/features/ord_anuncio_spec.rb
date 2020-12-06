require 'rails_helper'

RSpec.describe "Ordenar anúncios", type: :request do

    before :each do
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

        anuncio = Anuncio.new
        anuncio.item = "Alicate"
        anuncio.horário = "15h-14h"
        anuncio.descrição = "Coração"
        anuncio.tags = "A"
        anuncio.usuario_id = @usuario.id
        anuncio.tipo = "emprestimo"
        anuncio.imagens = [fixture_file_upload(File.join(Rails.root, 'public', 'anuncio.jpeg'))]
        anuncio.save

        anuncio1 = Anuncio.new
        anuncio1.item = "Caneta"
        anuncio1.horário = "10h-14h"
        anuncio1.descrição = "Bollywood"
        anuncio1.tags = "B"
        anuncio1.usuario_id = @usuario.id
        anuncio1.tipo = "solicitacao"
        anuncio1.imagens = [fixture_file_upload(File.join(Rails.root, 'public', 'anuncio.jpeg'))]
        anuncio1.save

        anuncio2 = Anuncio.new
        anuncio2.item = "Bola"
        anuncio2.horário = "19h-14h"
        anuncio2.descrição = "Antena"
        anuncio2.tags = "C"
        anuncio2.usuario_id = @usuario.id
        anuncio2.tipo = "solicitacao"
        anuncio2.imagens = [fixture_file_upload(File.join(Rails.root, 'public', 'anuncio.jpeg'))]
        anuncio2.save
    end
    describe "Clicar em item" do
        it "ordena os anuncios pelo nome dos itens" do
            visit 'anuncios'
            click_on 'Item'
            within(:xpath, "//table/tr[2]/td[2]") do
                expect(page).to have_content 'Caneta'
            end
            within(:xpath, "//table/tr[3]/td[2]") do
                expect(page).to have_content 'Bola'
            end
            within(:xpath, "//table/tr[4]/td[2]") do
                expect(page).to have_content 'Alicate'
            end
        end
    end
    describe "Clicar em tags" do
        it "ordena os anuncios pelas tags dos itens" do
            visit 'anuncios'
            click_on 'Tags'
            within(:xpath, "//table/tr[2]/td[2]") do
                expect(page).to have_content 'Alicate'
            end
            within(:xpath, "//table/tr[3]/td[2]") do
                expect(page).to have_content 'Caneta'
            end
            within(:xpath, "//table/tr[4]/td[2]") do
                expect(page).to have_content 'Bola'
            end
        end
    end
    describe "Clicar em descrição" do
        it "ordena os anuncios pela descrição dos itens" do
            visit 'anuncios'
            click_on 'Descrição'
            within(:xpath, "//table/tr[2]/td[2]") do
                expect(page).to have_content 'Bola'
            end
            within(:xpath, "//table/tr[3]/td[2]") do
                expect(page).to have_content 'Caneta'
            end
            within(:xpath, "//table/tr[4]/td[2]") do
                expect(page).to have_content 'Alicate'
            end
        end
    end
end
