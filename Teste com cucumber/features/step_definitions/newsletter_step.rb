## DADO

Dado("que eu esteja na Home da Loja Integrada") do

  @page = Page.new   
  @page.load
end 
  
Dado("que eu não tenha cadastro na Newsletter") do

  @page.acaoComSucesso
end
  
Dado("que eu já possuo cadastro no Newsletter") do

  @page.acaoSemSucesso
end


## QUANDO

Quando("cadastro o novo e-mail na Newsletter") do

  @page.acaoBotao
end
  

Quando("cadastro um e-mail já existente na Newsletter") do

  @page.acaoBotao
end

## ENTÃO

Então("o sistema exibe a mensagem {string}") do |mensagem|
  
  expect(@page).to have_content mensagem, wait: 2
end
  
  
 