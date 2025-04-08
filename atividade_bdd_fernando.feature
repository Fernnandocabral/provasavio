Feature: Finalizar compra com campos obrigatórios
  Como usuário do site Sauce Demo,
  Quero ser alertado quando tentar finalizar uma compra sem preencher os campos obrigatórios,
  Para que eu possa completar as informações e finalizar a compra corretamente.

Scenario: Tentar finalizar a compra sem preencher os campos obrigatórios
    Given que eu estou na página de checkout do site Sauce Demo
    And eu adicionei produtos ao carrinho
    When eu clico no botão "Checkout"
    And eu deixo os campos "First Name", "Last Name" e "Postal Code" em branco
    And eu clico no botão "Continue"
    Then eu devo ver uma mensagem de erro indicando "Error: First Name is required"