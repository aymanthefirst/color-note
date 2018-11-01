@manavendu
Feature: Login

  Scenario: logging in via facebook
    Given I access the facebook sign in page
    When I click on the login button
    Then I am redirected and logged in

  Scenario: Inputting correct user details
    Given I access the Google sign in page
    When I click on the gmail username
    Then I am am logged in
