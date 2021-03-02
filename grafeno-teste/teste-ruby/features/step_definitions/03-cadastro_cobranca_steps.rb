Dado('que eu acesso a página Nova Cobrança') do
    visit 'https://pagamentos.grafeno.be/users/sign_in'
   
end

Quando('realizo login com {string} e {string}') do |email2, senha2|
    find('input[id=user_email]').set email2
    find('input[id=user_password]').set senha2
    click_button 'Login'
    click_link_or_button 'Cobranças'
    click_link_or_button 'Base de cobranças'
    click_link_or_button 'Nova cobrança'
end
  
Quando('faço cadastro de cobrança com {string}, {string} e {string}') do |valor, data, pagador|
    find('input[id=charge_formatted_value]').set valor
    sleep(2)
    find('input[=charge[original_due_date]]').set data
    sleep(2)
    find('input[id=select2-charge_document_number-container]').set pagador
    sleep(2)
    click_link_or_button 'Criar Cobrança'
end

Então('exibe o alerta {string}') do |mensagem|
    expect(page).to have_content 'Cobrança criada com sucesso.'
    sleep(5)
end