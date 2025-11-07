            #language: pt
            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o cliente está na tela de "Checkout" para preencher os "Detalhes de faturamento"

            Cenário: Finalizar compra com dados obrigatórios preenchidos
            Quando eu preencho todos os campos obrigatórios com dados válidos
            E eu clico no botão "FINALIZAR COMPRA"
            Então a compra deve ser finalizada com sucesso
            E eu devo ser redirecionado para a página de "Pedido Recebido"

            Esquema do Cenário: Validar campos obrigatórios e formato de e-mail
            Dado que eu deixo o campo obrigatório "<campo>" vazio ou com formato inválido "<valor>"
            Quando eu clico no botão "FINALIZAR COMPRA"
            Então o sistema deve exibir uma mensagem de alerta indicando o erro no campo

            # Esta tabela cumpre o requisito do Esquema do Cenário
            Exemplos:
            | campo                | valor                     |
            | "Nome"               | "joao"                    |
            | "Sobrenome"          | "Silva"                   |
            | "Endereço"           | "Rua_Hassib_Mofarrej_205" |
            | "Cidade"             | "São_Paulo/SP"            |
            | "CEP"                | "05312-903"               |
            | "Telefone"           | "11987542136"             |
            | "Endereço de e-mail" | "joao_silva@ebac.com.br"  |
            | "Endereço de e-mail" | "joao_silva@ecabe.com.nr" |