#language: pt
Funcionalidade: Configuração de Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que o cliente está na página de detalhes do produto "Augusta Pullover Jacket"

Cenário: Limpar seleções de produto
Dado que eu selecionei o tamanho "M"
E eu selecionei a cor "Orange"
E eu selecionei a quantidade "2"
Quando eu clico no botão "Limpar"
Então as seleções de tamanho, cor e quantidade devem ser redefinidas para o estado original

Cenário: Validar limite de quantidade do produto
Dado que eu selecionei a quantidade "10"
Quando eu tento aumentar a quantidade clicando no botão "+"
Então a quantidade deve permanecer "10"

Cenário: Tentar adicionar ao carrinho sem seleções obrigatórias
Dado que eu não selecionei um tamanho
E eu não selecionei uma cor
Quando eu clico no botão "COMPRAR"
Então eu devo ver uma mensagem de alerta "Por favor, selecione o tamanho e a cor."


