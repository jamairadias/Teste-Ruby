#language:pt

Funcionalidade: Login
    Para que eu possa realizar login 
    Sendo um usuário da Plataforma Grafeno Pagamentos
    Posso acessar todas as funcionalidades disponíveis com meu e-mail e senha previamene cadastrados

Contexto: Página principal
    Dado que eu acesso a página principal


Cenario: Usuário com e-mail e senha válidos 
   
    Quando faço login "teste.jamaira@test.com" e "Pass1234" 
    Então exibe a mensagem "Logado com sucesso."

