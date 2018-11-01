
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
    Then I should be able to see the that default colour of the note has changed

  Scenario: I should be able to change the default font size
    Given I am able to access the app
    And I click skip the tutorial
    And I have added a note
    When I click on the nav bar
    And I click on the settings link
    And I select and change the deault font size
    Then I should be able to select the note and see the font size has changed
    And I should be able to change the font size to anything else or back to default

  Scenario: I should be able to change the list item height
    Given I am able to access the app
    And I click skip the tutorial
    And I have added a note
    And I have added a checklist
    When I click on the nav bar
    And I have clicked on the settings link
    And I select and change the default list item height
    Then I should be able to select the checklist and see that the list item height has changed
    And I should be able to change the list item height back to default

  Scenario: I should be able to adjust the widget options
    Given I am able to access the app
    And I click skip the tutorial
    When I click on the nav bar
    And I click on the settings link
    And I scroll down on the app
    Then I should be able to change the widget settings

  Scenario: I should be able to change the calendar settings
    Given I am able to access the app
    And I click skip the tutorial
    When I click on the nav bar
    And I click on the calendar link
    And I click on the nav bar
    And I click on the settings link
    And I scroll down on the app
    Then I should be able to change the calendar settings
    And I should be able to see the changes in the calendar

  @farhaan
  Scenario: I should be able to change the note text editor settings
    Given I am able to access the app
    And I click skip the tutorial
    And I have added a note
    When I click on the nav bar
    And I click on the settings link
    And I scroll down on the app
    And I select and change the text editor options
    Then I should be able to see the changes on the note
