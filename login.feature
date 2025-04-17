#language: PT

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto: 
Dado que eu acesse a página de autenticação da EBAC-SHOP

Cenário: Autenticação válida
Quando eu digitar o usuário "thais@ebacshop.com.br"
E a senha "1234"
Então deve direcionar para a área de checkout exibindo a mensagem "Olá Thais! Você será direcionado(a) para a tela de checkout!"

Cenário: Autenticação Inválida
Quando eu digitar o usuário "thetas@ebacshop.com.br"
E a senha "doidao"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

Esquema do Cenário: Autenticar múltiplos usuários
Quando eu digitarr o <usuario>
E a <senha>
Então deve exibir a <mensagem> de sucesso

Exemplos:
|usuario                    |senha    |mensagem                                                             |
|"thais@ebacshop.com.br"    |"1234"   | "Olá Thais! Você será direcionado(a) para a tela de checkout!"      |
|"francisca@ebacshop.com.br"|"fran123"| "Olá Francisca! Você será direcionado(a) para a tela de checkout!"  |
|"luisa@ebacshop.com.br"    |"Lu123"  | "Olá Luisa! Você será direcionado(a) para a tela de checkout!"      |
|"mel@ebacshop.com.br"      |"mel123" | "Olá Mel! Você será direcionado(a) para a tela de checkout!"        |

