Feature: I am able to do the tutorial
  As user I am able to go through the tutorial

  Scenario: I am able to go through the complete tutorial
    Given I have just started the application
    When I click through every tutorial element
    Then I am taking to the end page
