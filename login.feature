#language: pt
Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que o cliente está na tela de "Login" (Minha Conta)

Cenário: Login com sucesso
Quando eu preencho o campo "Username or email address" com dados válidos
E eu preencho o campo "Password" com dados válidos
E eu clico no botão "LOGIN"
Então eu devo ser redirecionado para a tela de checkout

Cenário: Login com dados inválidos
Quando eu preencho o campo "Username or email address" com "usuario@invalido.com"
E eu preencho o campo "Password" com "senha_invalida"
E eu clico no botão "LOGIN"
Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos"
