class Page < SitePrism::Page
    
    
    set_url "https://bazar-da-samy.lojaintegrada.com.br/"

    element :campo, :xpath, "/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/input"
    element :botao, :xpath, "/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/button"


    $variavelGlobal

    def acaoBotao
        botao.click
    end

    def acaoComSucesso

        string = gerarString
        $variavelGlobal = string
        campo.set(string)
    end

    def acaoSemSucesso

        campo.set($variavelGlobal)
        #Para gerar um email diferente, necessario retirar a variavel global e chamar o metodo gerarString como foi feito em acaoComSucesso
    end

    def gerarString

        #Gerando string 
        o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
        string = (0...5).map { o[rand(o.length)] }.join

        return string+'@com.br'
    end
end