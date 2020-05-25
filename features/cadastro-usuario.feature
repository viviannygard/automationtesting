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