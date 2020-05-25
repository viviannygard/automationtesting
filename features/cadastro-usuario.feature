#language:pt


Funcionalidade: Cadastrar usuário
    Sendo usuário comum
    Quero efetuar uma cadastro no sistema 
    Para ter acesso as funcionalidades

    @cadastro
    Esquema do Cenario: Cadastrar usuário com sucesso
        Dado que <codigo> é um novo usuario
        Quando eu faço o cadastro deste usuário
        Então sistema deve cadastrar com sucesso

        Exemplos:
            | codigo     |
            | "Usuario"  |
          Esquema do Cenario: Campos obrigatórios
        Dado que <codigo> é um novo usuario
        Quando eu faço o cadastro deste usuario
        Então devo ver a notificação <texto>

        Exemplos:
            | codigo      | texto                     |
            | "no_name"   | "Preencher este campo"    |
            | "no_email"  | "Preencher este campo"    |

     Cenario: Duplicado
        Dado que "teste@teste.com" é um novo usuario
        Mas este email já existe cadastrado
        Quando eu faço o cadastro deste usuario
        Então devo ver a notificação "Email already exists"
