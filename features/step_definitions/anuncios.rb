Então('deverei ver o anuncio na página de listagem de anuncios para empréstimo') do
    visit 'anuncios/emprestimos'

    expect(page).to have_content("Empréstimo")
    expect(page).to have_content("Livro de TADI")
end
  
 Então('deverei ver o anuncio na página de listagem de anuncios de itens solicitados') do
    visit 'anuncios/solicitacoes'

    expect(page).to have_content("Solicitação")
    expect(page).to have_content("Livro de TADI")
end
  