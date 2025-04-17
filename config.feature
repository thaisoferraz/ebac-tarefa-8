#language: PT

Funcionalidade: Configuração
Como cliente da EBAC Shop 
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a EBAC Shop para fazer compras

Cenário: Seleção de cor, tamanho e quantidade
Quando Eu clicar no produto
E colocar ele no carrinho sem preencher todas as opções
Então deve exibir uma mensagem de alerta "Para adicionar o produto ao carrinho, selecione a cor, o tamanho e a quantidade! "

Cenário: Limite de produtos por venda
Quando Eu selecionar a quantidade do produto 
E ultrapassar o limite permitido
Então deve exibir uma mensagem de alerta "Permitido apenas 10 produtos por venda!"

Cenário: Estado original das selecões
Quando eu fizer seleções de cor, tamanho e quantidade
E apertar o botão "limpar"
Então Deve zerar todas as seleções feitas



