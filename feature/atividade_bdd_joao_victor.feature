Feature: Adicionar produto ao carrinho
  Como usuário do site Sauce Demo,
  Quero adicionar um produto ao meu carrinho,
  Para que eu possa finalizar a compra com sucesso.

Scenario: Adicionar um produto ao carrinho com sucesso
    Given que eu estou na página de inventário do site Sauce Demo
    When eu clico no botão "Adicionar ao Carrinho" do produto "Sauce Labs Backpack"
    Then o produto "Sauce Labs Backpack" deve aparecer no meu carrinho

Scenario: Visualizar os itens do carrinho antes de finalizar a compra
    Given que eu adicionei o produto "Sauce Labs Backpack" ao meu carrinho
    When eu clico no ícone do carrinho no topo da página
    Then eu devo ver o produto "Sauce Labs Backpack" listado no carrinho