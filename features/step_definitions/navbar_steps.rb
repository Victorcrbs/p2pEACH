Dado ('que estou na tela principal') do
    visit 'welcome/index'
end
Então ('devo estar na página de login') do
    expect(page).to have_current_path("/login")
end

Então ('devo estar na página de cadastro') do
    expect(page).to have_current_path("/signup")
end

Então ('devo estar na página principal') do
    expect(page).to have_current_path("/welcome/index")
end