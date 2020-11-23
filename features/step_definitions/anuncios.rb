Então('deverei ver o anuncio na página de listagem de anuncios para empréstimo') do
    visit 'emprestimos'

    expect(page).to have_content("Objetos para pegar emprestado")
    expect(page).to have_content("Livro de TADI")
end
  
 Então('deverei ver o anuncio na página de listagem de anuncios de itens solicitados') do
    visit 'solicitacoes'

    expect(page).to have_content("Objetos solicitados")
    expect(page).to have_content("Livro de TADI")
end
  