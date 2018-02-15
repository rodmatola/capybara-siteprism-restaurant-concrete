# language: pt
# enconding: UTF-8

Funcionalidade: Fazer pesquisa no restaurante
    Funcionalidade para pesquisar um restaurante e 
    verificar se as informações estão corretas

@campo_busca
Cenário: Verificar existência do campo de busca
    Dado que estou na página de pesquisa
    Quando clico na lupa
    Então a barra de busca deve aparecer

# @buscar
# Cenário: Fazer uma busca
#     Quando pesquiso por "hamburger"
#     E escolho um restaurante
#     Então todos os preços listados devem ser precedidos de R$
