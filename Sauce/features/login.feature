#language: pt

@regress
Funcionalidade: Cenários de Login

Contexto: Pagina para login
    Dado que eu acesse a pagina principal
    
@teste
Cenario: Login Autenticado

    Quando preencher dados de login "usuario" e "senha_invalida"
    E clicar no botao "login"
    Entao devera aparecer a loja de "produtos"

Esquema do Cenario: Tentivas de login
#outline

    Quando preencher dados de login "<user>" e "<senha>"
    E clicar no botao "login"
    Entao devera aparecer uma mensagem "<mensagem>"

