# language: pt
# enconding: UTF-8

menu_restaurante = RestaurantMenu.new

Dado("que estou na página de pesquisa") do
  abrir_pagina(menu_restaurante)
end

Quando("clico na lupa") do
  clica_lupa(menu_restaurante)
end

Então("a barra de busca deve aparecer") do
  tem_campo_busca?(menu_restaurante)
end

Quando("pesquiso por {string}") do |string|
  pesquisar_por(menu_restaurante, string)
end

Então("escolho um restaurante") do
  clica(menu_restaurante)
end
