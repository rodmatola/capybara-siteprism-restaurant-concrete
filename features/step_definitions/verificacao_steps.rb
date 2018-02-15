# language: pt
# enconding: UTF-8

restaurante = RestaurantPage.new

Dado("que estou na página de um restaurante") do 
    restaurante.load(restaurante: 'burger-house')
end

Então("todos os preços listados devem ser precedidos de R$") do
  verifica_simbolo_real(restaurante)
end

Então("Os campos Categoria, Quem somos e Horários devem estar presentes") do
  verifica_campos_info(restaurante)
end

Então("todos os campos devem conter uma descriçao não vazia") do
    verifica_campos_descricao(restaurante)
end

Então("todos os nomes dos pratos devem estar em letra maiúscula") do
    tudo_maiuscula?(restaurante)
end

Então("todo prato deve conter uma breve descrição") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("todos os itens devem possuir o botão {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

