@ayman
Feature: Login

  Scenario: logging in via facebook
    Given I access the facebook sign in page
    When I click on the login button
    Then I am redirected and logged in
