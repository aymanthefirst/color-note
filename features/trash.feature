@latest
Feature: Trash Can

  Scenario: Restoring a deleted note
    Given I have deleted a note
    And I navigate to the trash page
    When I click on the first note
    And I restore the note from the navbar
    And I click back
    Then I will be on an empty trash page

  Scenario: Permanently deleting a note
    Given I have deleted a note
    And I navigate to the trash page
    When I long-click on the first note
    And I click permanently delete on the dropdown
    Then I will be on an empty trash page
