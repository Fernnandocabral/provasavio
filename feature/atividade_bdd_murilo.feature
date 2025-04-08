Feature: Login no site Sauce Demo
  Como um usuário do site Sauce Demo,
  Quero acessar minha conta com credenciais válidas,
  Para que eu possa explorar as funcionalidades do site.

Scenario: Login com credenciais válidas
    Given que eu estou na página inicial do site Sauce Demo
    When eu insiro o nome de usuário "standard_user"
    And eu insiro a senha "secret_sauce"
    And eu clico no botão "Login"
    Then eu devo ser redirecionado para a página de inventário

Scenario: Login com credenciais inválidas
    Given que eu estou na página inicial do site Sauce Demo
    When eu insiro o nome de usuário "usuario_invalido"
    And eu insiro a senha "senha_errada"
    And eu clico no botão "Login"
    Then eu devo ver uma mensagem de erro indicando "Epic sadface: Username and password do not match any user in this service"