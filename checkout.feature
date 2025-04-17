#language: PT

Funcionalidade: Tela de checkout
Como cliente da EBAC-SHOP
Quero concluir meu cadastro  
Para finalizar minha compra

Contexto: 
Dado que eu estou na página de cadastro da EBAC SHOP no processo de checkout

Cenário: Cadastro com sucesso
Quando eu preencher todos os campos obrigatórios: nome, sobrenome, e-mail, CPF, endereço, número, CEP e telefone corretamente
Então o sistema deve exibir a mensagem "Cadastro concluído com sucesso! Você será direcionado para o pagamento."

Cenário: E-mail com formato inválido
Quando eu digitar o e-mail "thais_ebacshop.com"
Então o sistema deve exibir uma mensagem de erro "Formato de e-mail inválido!"

Cenário: Tentativa de cadastro com campos obrigatórios vazios
Quando eu tentar finalizar o cadastro sem preencher todos os campos obrigatórios (nome, e-mail, CPF, endereço, número, CEP ou telefone)
Então o sistema deve exibir a mensagem de alerta "Por favor, preencha todos os campos obrigatórios."

Esquema do Cenário: Cadastro com diferentes combinações de dados  
Quando eu digitar o <nome>, <sobrenome>, <email>, <cpf>, <endereco>, <numero>, <cep> e <telefone>  
Então o sistema deve exibir a <mensagem>

Exemplos:
| nome     | sobrenome  | email                        | cpf             | endereco         | numero | cep         | telefone         | mensagem                                                                  |
| "Thais"  | "Oliveira" | "thais@ebacshop.com.br"      | "123.456.789-00"| "Rua das Flores" | "100"  | "87000-000" | "(44)99999-1234" | "Cadastro concluído com sucesso! Você será direcionado para o pagamento." |
| "Melanie"| "Costa"    | "melanie@ebacshop.com.br"    | "222.333.444-55"| "Av. Brasil"     | "50"   | "87010-010" | "(44)98888-7777" | "Cadastro concluído com sucesso! Você será direcionado para o pagamento." |
| "Thais"  | "Silva"    | "thais_ebacshop.com"         | "123.000.111-99"| "Rua A"          | "10"   | "87020-030" | "(44)90000-0000" | "Formato de e-mail inválido!"                                             |
| "Amanda" | ""         | "amanda@ebacshop.com.br"     | ""              | ""               | ""     | ""          | ""               | "Por favor, preencha todos os campos obrigatórios."                       |