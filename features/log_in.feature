@ayman
Feature: Login

    Scenario: Inputting correct user details logs user in
        Given I access the facebook sign in page
        And I input a valid username
        And I input a valid password
        When I click on the login button
        Then I am redirected and logged in

    Scenario: Inputting incorrect username details
        Given I access the facebook sign in page
        And I input a invalid username
        And I input a valid password
        When I click on the login button
        Then I get an error message

    Scenario: Inputting incorrect password details
        Given I access the facebook sign in page
        And I input a invalid username
        And I input a valid password
        When I click on the login button
        Then I get an error message

    Scenario: logging in via facebook
        Given I access the facebook sign in page
        When I click on the login button
        Then I am redirected and logged in
# Feature: Login for google
@manavendu
    Scenario: Inputting correct user details  
        Given I access the Google sign in page
        When I click on the gmail username
        Then I am logged in and see the navbar with username

  
