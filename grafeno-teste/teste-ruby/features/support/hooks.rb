

After('@logout') do
    click_link 'Perfil'
    click_link 'Logout'
end


After do |scenario|
    nome_cenario = scenario.name.gsub(' ', '_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot) 
    embed(screenshot, 'image/png', 'Print evidência')
end