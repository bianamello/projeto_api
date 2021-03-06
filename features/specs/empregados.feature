#language: pt

Funcionalidade: Empregados

    Como aplicação
    Quero fazer requisições no serviço REST API EXAMPLE
    Para cadastrar e excluir de empregados

@smoke @criar
Esquema do Cenário: Criar empregados

    Dado que eu tenho os seguintes dados:
        | name   | <name>   |
        | salary | <salary> |
        | age    | <age>    |
    Quando eu faço uma requisição para o serviço de criação de empregados
    Então o código de resposta HTTP deve ser igual a "200"
    E devo visualizar uma mensagem de "success"
    E o empregado deve ser criado corretamente

    Exemplos:
        | name    | salary | age |
        | Fabiana | 9000   | 33  |
        | Danieli | 8000   | 31  |

@smoke @excluir 
Cenário: Excluir empregados

    Dado que eu tenha empregados cadastrados
    Quando eu faço uma requisição para o serviço de exclusão de empregados
    Então o código de resposta HTTP deve ser igual a "200"
    E devo visualizar uma mensagem de "success"