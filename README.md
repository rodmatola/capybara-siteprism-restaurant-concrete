Para rodar esses testes voce precisa da aplicação
[https://github.com/cod3rcursos/meat-app-final](https://github.com/cod3rcursos/meat-app-final)

Versão usando o Python Robot Framework no link [https://github.com/rodmatola/robot-framework-restaurant-concrete](https://github.com/rodmatola/robot-framework-restaurant-concrete)

## Funcionalidade: Pesquisar Restaurante

	Como um cliente que adora comer
	Gostaria de pesquisar um restaurante de minha preferência
	Para que possa visualizar as informações sobre o estabelecimento
	E o cardápio online

## Critérios de aceite: [![Circle CI](https://circleci.com/gh/rodmatola/capybara-siteprism-restaurant-concrete.svg?style=shield)](https://circleci.com/gh/rodmatola/capybara-siteprism-restaurant-concrete)

Campos obrigatórios:
- Campo para busca do restaurante

Valores:
- Todos valores devem conter "R$"

Dados do estabelecimento:
- Categoria (para saber qual a especialidade)gym
- Quem somos (para saber se tem know how no mercado)
- Horários (para saber qual horário de funcionamento)

Cardápio:
- Itens devem ser exibidos em forma de lista
- Imagem alinhada a esquerda
- Nome do prato em caixa alta
- Breve descrição do prato abaixo do nome
- Botão adicionar deve estar sendo exibido
