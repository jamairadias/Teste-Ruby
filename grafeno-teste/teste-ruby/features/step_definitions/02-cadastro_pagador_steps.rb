Dado('que eu acesso a página Novo Pagador') do
    visit 'https://pagamentos.grafeno.be/users/sign_in'
    
end
  
Quando('efetuo login com {string} e {string}') do |email1, senha1|
    find('input[id=user_email]').set email1
    find('input[id=user_password]').set senha1
    click_button 'Login'
    click_link_or_button 'Pagadores'
    click_link_or_button 'Novo pagador'
end
    
Quando('faço cadastro de pagador com {string} e {string}') do |nome, documento|
    find('input[id=payer_name]').set nome
    sleep(2)
    find('input[id=payer_document_number]').set documento
    sleep(2)
    click_button 'Criar Pagador'
end

Então('exibe a mensagem de sucesso {string}') do |mensagem|
    expect(page).to have_content 'Registro criado com sucesso!'
    sleep(5)
end

  
  
  
  