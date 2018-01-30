# language: pt

Funcionalidade: Cadastro de Newsletter
    Eu como visitante da Loja Integrada quero cadastrar meu e-mail na Newsletter para receber as novidades
    Um e-mail só pode ser cadastrado uma única vez, ao cadastrar com sucesso você recebe a mensagem: "Obrigado por se inscrever! Aguarde novidades da nossa loja em breve."
    Ao tentar cadastrar um e-mail pela segunda vez, deve exibir a mensagem: "Seu e-mail já consta em nossa newsletter."
    

    Contexto: Estar na Home
    Dado que eu esteja na Home da Loja Integrada

    @run
    Cenário: Cadastrar um e-mail novo com sucesso
    Dado que eu não tenha cadastro na Newsletter
    Quando cadastro o novo e-mail na Newsletter
    Então o sistema exibe a mensagem "Obrigado por se inscrever! Aguarde novidades da nossa loja em breve."


    Cenário: Não cadastrar um e-mail já existente na loja
    Dado que eu já possuo cadastro no Newsletter
    Quando cadastro um e-mail já existente na Newsletter
    Então o sistema exibe a mensagem "Seu e-mail já consta em nossa newsletter."
