#language:pt

Funcionalidade: Cadastro de um pagador 
    Para que eu possa realizar o cadastro de um pagador 
    Sendo um usuário da Plataforma Grafeno Pagamentos
    Posso cadastrar uma cobrança manual futuramente

Contexto: Página Novo Pagador
    Contexto: Página principal
    Dado que eu acesso a página Novo Pagador

Cenario: Pagador com nome e CNPJ válidos
   
    Quando efetuo login com "teste.jamaira@test.com" e "Pass1234" 
    E faço cadastro de pagador com "Maria Souza" e "24440348000168" 
    Então exibe a mensagem de sucesso "Registro criado com sucesso!"




