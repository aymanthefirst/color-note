Feature: Notes

  Scenario: Accessing the notes page
    Given I have opened the app
    And I skip the tutorial
    Then I am on the notes page

  @kingAyman
  Scenario: Getting to the first note editor page
    Given I have opened the app
    And I skip the tutorial
    When I click add note in the centre of the page
    And I click add a text note
    Then I will be on a new notes page

  @noteInfoDan
  Scenario: Completing the note
    Given I am editting a new note
    When I input a note title of TestNote
    And I input note information
    And I change the note colour
    And I accept the note
    And I click back
    Then I should see a note with the title TestNote
