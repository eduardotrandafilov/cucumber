            #language: pt
            Funcionalidade: Tela de checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout

            Esquema do Cenário:Cadastro realizado com sucesso
            Quando eu inserir <nome>, <sobrenome>, <pais> , <endereco> ,<cidade>,<cep>,<telefone>,<email>
            E selecionar finalizar compra
            Então deve ser redirecionado para a página de confirmação de cadastro
            E deve ser exibida no checkout "Cadastro realizado com sucesso!"

            Exemplos:
            | nome      | sobrenome     | pais              | endereco        | cidade      | cep        | telefone    | email               |
            | "Eduardo" | "Trandafilov" | "Reino Unido(UK)" | "Rua Teste,444" | "São Paulo" | "0800-000" | "4444-4444" | "eduardo@gmail.com" |

            Esquema do Cenário:Validação campos com preenchimento inválido
            Quando eu inserir <nome>, <sobrenome>, <pais> , <endereco> ,<cidade>,<cep>,<telefone>,<email>
            E selecionar finalizar compra
            Então deve ser exibida no checkout <mensagem>

            Exemplos:
            | nome      | sobrenome     | pais              | endereco        | cidade      | cep        | telefone    | email               | mensagem                                |
            | ""        | "Trandafilov" | "Reino Unido(UK)" | "Rua Teste,444" | "São Paulo" | "0800-000" | "4444-4444" | "eduardo@gmail.com" | "Preenchinento nome é obrigatório"      |
            | "Eduardo" | ""            | "Reino Unido(UK)" | "Rua Teste,444" | "São Paulo" | "0800-000" | "4444-4444" | "eduardo@gmail.com" | "Preenchinento sobrenome é obrigatório" |
            | "Eduardo" | "Trandafilov" | ""                | "Rua Teste,444" | "São Paulo" | "0800-000" | "4444-4444" | "eduardo@gmail.com" | "Preenchinento país é obrigatório"      |
            | "Eduardo" | "Trandafilov" | "Reino Unido(UK)" | ""              | "São Paulo" | "0800-000" | "4444-4444" | "eduardo@gmail.com" | "Preenchinento endereço é obrigatório"  |
            | "Eduardo" | "Trandafilov" | "Reino Unido(UK)" | "Rua Teste,444" | ""          | "0800-000" | "4444-4444" | "eduardo@gmail.com" | "Preenchinento cidade é obrigatório"    |
            | "Eduardo" | "Trandafilov" | "Reino Unido(UK)" | "Rua Teste,444" | "São Paulo" | ""         | "4444-4444" | "eduardo@gmail.com" | "Preenchinento cep é obrigatório"       |
            | "Eduardo" | "Trandafilov" | "Reino Unido(UK)" | "Rua Teste,444" | "São Paulo" | "0800-000" | ""          | "eduardo@gmail.com" | "Preenchinento telefone é obrigatório"  |
            | "Eduardo" | "Trandafilov" | "Reino Unido(UK)" | "Rua Teste,444" | "São Paulo" | "0800-000" | "4444-4444" | ""                  | "Preenchinento email é obrigatório"     |
            | "Eduardo" | "Trandafilov" | "Reino Unido(UK)" | "Rua Teste,444" | "São Paulo" | "0800-000" | "4444-4444" | "eduardo@gmail"     | "Email com formato inválido"            |
            | ""        | ""            | ""                | ""              | ""          | ""         | ""          | ""                  | "Preencha todos os campos obrigatórios" |

