            #language: pt
            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login

            Cenário: Login com sucesso
            Quando eu inserir <user> e <password>
            E clicar no botão Login
            Então usuario deve ser direcionado para tela de checkout

            Exemplos:
            | user                | password         |
            | "eduardo@gmail.com" | "password123456" |
            | "eduardo"           | "password123456" |


           Esquema do Cenário: Login inválido
           Quando eu inserir <user> e  <password>
           E clicar no botão Login
           Então deve ser exibida no login <mensagem> 
           Exemplos:
           | user                | password         | mensagem                                       |
           | ""                  | ""               | "Preenchimento email e senha são obrigatórios" |
           | " "                 | " "              | "Usuário ou senha inválidos"                   |
           | "ed"                | "password123456" | "Usuário ou senha inválidos"                   |
           | "eduardo"           | "123"            | "Usuário ou senha inválidos"                   |
           | "ed"                | "123"            | "Usuário ou senha inválidos"                   |
           | "eduardo@gmail"     | "password123456" | "Usuário ou senha inválidos"                   |
           | "eduardo@gmail.com" | "123"            | "Usuário ou senha inválidos"                   |
           | "eduardo@gmail"     | "123"            | "Usuário ou senha inválidos"                   |





