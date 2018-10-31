
Feature: I should be able to access the settings

  Scenario: I should be able to change the default page in the settings
    Given I am able to access the app
    And I click skip the tutorial
    When I click on the nav bar
    And I click on the settings link
    Then I should be able to change default page to calendar

  Scenario: I should be able to change the colour of the notes
    Given I am able to access the app
    And I click skip the tutorial
    And I have added a note
    When I click on the nav bar
    And I click on the settings link
    And I select and change the deault color
    And I click add note
    Then I should be able to see the that default colour of the has changed

  @farhaan
  Scenario: I should be able to change the default font size
    Given I am able to access the app
    And I click skip the tutorial
    And I have added a note
    When I click on the nav bar
    And I click on the settings link
    And I select and change the deault font size
    Then I should be able to select the note and see the font size has changed
    And I should be able to change the font size to anything else or back to default
