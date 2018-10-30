@mine
Feature: I should be able to change the themes of the application

  Scenario: I should be able to change the theme to soft
    Given I am able to access the app
    And I click skip the tutorial
    When I click on the nav bar
    And I click on the theme link
    Then I should be able to change the theme to soft
    And I should be able to change the theme to dark
    And I should be able to change the theme back to default
