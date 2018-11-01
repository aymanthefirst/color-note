@kingAyman
Feature: Login for facebook

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



# Feature: Login for google
#
# Feature: Login for email
