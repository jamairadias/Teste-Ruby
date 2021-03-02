#language:pt

Funcionalidade: Cadastro de Cobrança Manual
    Para que eu possa realizar o cadastro de uma cobrança manual 
    Sendo um usuário da Plataforma Grafeno Pagamentos
    Posso  gerar um recebível em minha conta Grafeno.

Contexto: Página Nova Cobrança
    Dado que eu acesso a página Nova Cobrança


Cenario: Cobrança com dados válidos 
    Quando realizo login com "teste.jamaira@test.com" e "Pass1234"
    E faço cadastro de cobrança com "100000", "30/11/2020" e "Maria Souza" 
    Então exibe o alerta "Cobrança criada com sucesso."