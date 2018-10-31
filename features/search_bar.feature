Feature: Search bar

  @kingAyman
  Scenario: On typing the valid note details it should show the searched item
    Given I am on the search page
    When I type valid note details in the search bar
    Then I should get the valid results

  Scenario: On typing the invalid note details it should show an error message
    Given I am on the the search page
    When I type invalid note details in the search bar
    Then I should receive an error for not finding the product

  Scenario: When clicking on the search box, any text already in it should be cleared
    Given I am on the the search page
    When I click on the search box
    Then the search box should be empty

  Scenario: When clicking on the search box, after a search, any text already in it should be cleared
    Given I am on the the search page
    When I type valid product details in the search bar
    And I click on the search box
    Then the search box should be empty
