*** Settings ***
Documentation    Essa Suite testa o site da https://www.amazon.com.br/

Resource        ../resources/resources.robot

Test Setup       Abrir navegador
Test Teardown    Fechar navegador



*** Test Cases ***
Abrir o Site da Amazon.com
    [Documentation]    Esse teste acessa a home page do site da Amazon.com.br
    ...                e verifica a se tem o banner de frete grátis
    [Tags]             home_page
    Acessar a home page do site da Amazon.com
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Verificar se aparece a frase "Frete GRÁTIS no seu primeiro pedido" 

Verificar se existe o banner da "oferta do dia"
    [Documentation]        Verificar se tem o banner de oferta do dia
    [Tags]                 banner_oferta_do_dia
    Banner com oferta do dia
    Clicar no banner do "Ofertas e Promoções"
    Verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br"
    Verificar se aparece o botão "Informática"
    Verificar se aparece o banner com "Oferta em Laptops"


Verificar menus
    [Documentation]    Esse teste verificar a existência de menu
    [Tags]             menus
    Verificar se existe o menu "Eletrônicos"
    Verificar se existe o menu "eBooks Kindle"   

Acessar o menu "Eletrônicos" 
    [Documentation]   Esse teste entra no menu de Eletrônicos, e verificar se existe
    ...               a categoria de Computadores e Informática
    [Tags]            acessa_menu_eletronicos
    Entrar no menu "Eletrônicos"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"   
    Verificar se aparece a categoria "Computadores e Informática"


Pesquisa de um Produto
    [Documentation]      Esse teste realizar a pesquisa de um Produto
    [Tags]               pesquisa
    Acessar a home page do site da Amazon.com
    Digitar o nome de produto "Console Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Console Xbox Series S"


# Pesquisa de um Produto
#     Acessar a home page do site da Amazon.com
#     Digitar o nome de produto "Console Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa, listando o produto pesquisado
    
# Menu Books Kindle




