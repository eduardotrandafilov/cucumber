            #language: pt
            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu eu acesse a página de configuração do  produto

            Esquema do Cenário: Configuração do produto com sucesso
            Quando eu inserir color "Blue" size "XS" e quantidade "1"
            E selecionar comprar
            Então deve direcionar para página do carrinho de compras

            Esquema do Cenário: Seleção de cor, tamanho e quantidade obrigatórios
            Quando eu inserir  <color> , <size> e  <quantidade>
            E selecionar comprar
            Então deve exibir <mensagem>

            Exemplos:
            | color  | size | quantidade | mensagem                         |
            | ""     | "XS" | "1"        | "Color deve ser preenchido"      |
            | "Blue" | ""   | "1"        | "Size deve ser preenchido"       |
            | "Blue" | "XS" | "0"        | "Quantidade deve ser preenchida" |

            Cenário: Limite de quantidade de produtos
            Quando eu inserir color "Blue", size "XS" e quantidade "11"
            E selecionar comprar
            Então deve exibir "A quantidade máxima permitida por venda é 10 produtos"

            Cenário: Limpar configuração de produto
            Quando eu inserir color "Blue", size "XS" 
            E selecionar limpar
            Então as seleções das categorias size e color devem estar resetadas ao estado original
