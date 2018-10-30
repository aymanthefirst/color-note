@kingAyman
Feature: I am able to do the tutorial
  As user I am able to go through the tutorial

  Scenario: I am able to go through the complete tutorial
    Given I am on the tutorial page
    When I click through every tutorial element
    Then I am taken to the congratulations page
