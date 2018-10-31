Feature: I am able to go through or skip the tutorial

  Scenario: I am able to skip the tutorial
    Given I can open the app
    When I click on allow ColorNote to access media
    And I click skip
    Then I should be able to access the homepage
