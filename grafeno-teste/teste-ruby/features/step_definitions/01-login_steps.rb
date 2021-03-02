Dado('que eu acesso a página principal') do
    visit 'https://pagamentos.grafeno.be/users/sign_in'
end
  
Quando('faço login {string} e {string}') do |email, senha|
    login = LoginPage.new.faz_login(email, senha)
end
  
Então('exibe a mensagem {string}') do |mensagem|
    expect(page).to have_content 'Logado com sucesso.'
    sleep(5)
end