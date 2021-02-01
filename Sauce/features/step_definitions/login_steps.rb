Dado('que eu acesse a pagina principal') do
    visit 'https://www.saucedemo.com'
end
    
Quando('preencher dados de login {string} e {string}') do |batata, paçoca|
    #binding.pry
    find('#user-name').set (MASSA[batata])
    find('#password').set (MASSA[paçoca])
end

Quando('clicar no botao {string}') do |button|
    find('#login-button').click
end

Entao('devera aparecer a loja de {string}') do |produtos|
    assert_selector("div[class='product_label']", text: "Products", visible: true)
end

Entao('devera aparecer uma mensagem {string}') do |sadface|
end