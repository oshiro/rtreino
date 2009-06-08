Feature: Manage problemas
  In order to deal with problems 
  As a coach
  I want to add and remove problems
  
  Scenario: Register new problema
    Given I am on the new problema page
    When I fill in "Id no pku" with "1"
    And I fill in "Nome" with "Problema Difícil"
    And I fill in "Link" with "http://site.com"
    And I fill in "Categorias old" with "1"
    And I fill in "Origem old" with "1"
    And I press "Create"
    Then I should see "1"
    And I should see "Problema Difícil"
    And I should see "http://site.com"
    And I should see "1"
    And I should see "1"

  Scenario: Delete problema
    Given the following problemas:
      |id_no_pku|nome|link|categorias_old|origem_old|
      |1|prob1|1.com|1|1|
      |2|prob2|2.com|2|2|
      |3|prob3|3.com|3|3|
      |4|prob4|4.com|4|4|
    When I delete the 3rd problema
    Then I should see the following problemas:
      |id_no_pku|nome|link|categorias_old|origem_old|
      |1|prob1|1.com|1|1|
      |2|prob2|2.com|2|2|
      |4|prob4|4.com|4|4|
