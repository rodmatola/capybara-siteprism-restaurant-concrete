# language: pt
# enconding: UTF-8

Funcionalidade: Fazer pesquisa no restaurante
    Funcionalidade para pesquisar um restaurante e 
    verificar se as informações estão corretas

    # Dado que estou na página de um restaurante
    # |  restaurante  |
    # | bread-bakery  |
    # | burger-house  |
    # | coffee-corner |
    # | green-food    |
    # | tasty-treats  |
    # | ice-cream     |

@reais
Cenário: Verificar se os preços contém R$
    Dado que estou na página de um restaurante
    Então todos os preços listados devem ser precedidos de R$

@dados
Cenário: Verificar se os dados do restaurante estao sendo exibidos
    Dado que estou na página de um restaurante
    Então Os campos Categoria, Quem somos e Horários devem estar presentes
    E todos os campos devem conter uma descriçao não vazia

@maiusculas
Cenário: Verificar nome dos pratos em caixa alta
    Dado que estou na página de um restaurante
    Então todos os nomes dos pratos devem estar em letra maiúscula

@descricao
Cenário: Verificar descriçao dos pratos
    Dado que estou na página de um restaurante
    Então todo prato deve conter uma breve descrição

@botao_adicionar
Cenário: Verificar existencia do botão "Adicionar"
    Dado que estou na página de um restaurante
    Então todos os itens devem possuir o botão "Adicionar"