Feature: Manage niveis
  In order to Rank the problemas
  As a coach
  I want to have "níveis"
  
  Scenario: Register new nivel
    Given I am on the new nivel page
    When I fill in "Descricao" with "descricao"
    And I press "Create"
    Then I should see "descricao"

  Scenario: Delete nivel
    Given the following niveis:
      |descricao|
      |bobo|
      |muito-bobo|
      |para-o-rafael-falar-uri|
      |nem-ferrando-o-rafael-fala-uri-certo|
    When I delete the 3rd nivel
    Then I should see the following niveis:
    |descricao|
    |bobo|
    |muito-bobo|
    |nem-ferrando-o-rafael-fala-uri-certo|
