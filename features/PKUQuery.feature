Feature: Query to PKU
  In order to know if a user get accept in a problem in PKU
  As a coach
  I want search in PKU for user's submissions
  
  Scenario: Get One submission from a specific user
    Given user = "rtreino"
    And password = "password"
    When I ask for submissions
    Then I should get the submissions