@manav

Feature: I should be able to mark a note on calendar

  Scenario: I should be able to mark, change a note on the calendar
    Given I can access the color note app
    And I click skip and navbar option 
    When I click on the calendar
    Then I should be able to put the text details 
