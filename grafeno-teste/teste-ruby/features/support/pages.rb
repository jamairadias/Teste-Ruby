

class LoginPage
  include Capybara::DSL
    def faz_login(email, senha)
        find('input[id=user_email]').set email
        find('input[id=user_password]').set senha
        click_button 'Login'
    end
end