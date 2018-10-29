Feature: I should be able to change the themes of the application

  Scenario: I should be able to change the theme to soft
    Given I am able to access the app
    When I click the nav bar
    And I click on the theme link
    Then I should be able to change the theme to soft

  Scenario: I should be able to change the theme to dark
    Given I am able to access the app
    When I click the nav bar
    And I click on the theme link
    Then I should be able to change the theme to dark

  Scenario: I should be able to change the theme back to default
    Given I am able to access the app
    When I click the nav bar
    And I click on the theme link
    Then I should be able to change the theme back to default
