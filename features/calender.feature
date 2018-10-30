@manav
Feature: I should be able to mark a note on the calendar
  Scenario: I am able to select the calendar

    Given I can open the app
    When I click on sidebar
    And I click Calendar
    And I select one of the date
    Then I should be able to mark a note
