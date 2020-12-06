Dado('que estou na página de anúncios') do
    click_on 'P2P EACH'
end
Então('os itens devem aparecer na ordem {string}, {string} e {string}') do |string, string2, string3|
    within(:xpath, "//table/tr[2]") do
        page.should have_content(string)
    end
    within(:xpath, "//table/tr[3]") do
        page.should have_content(string2)
    end
    within(:xpath, "//table/tr[4]") do
        page.should have_content(string3)
    end
end
