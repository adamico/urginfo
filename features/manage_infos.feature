Feature: Manage infos
  In order to find useful infos for users
  Admin
  wants to manage infos

  Background:
    Given a category exists

  Scenario: create new info
    When I go to the category's page
    And I follow "New info"
    And I create a valid info
    Then I should see "name 1"

  Scenario: update existing info
    Given a info exists with category: the category
    When I go to the info's edit page
    And I fill in "Name" with "new name"
    And I press "Update"
    Then I should see "new name"

  Scenario: Delete info
    Given the following infos exist:
      |name| category |
      |name 1| the category|
      |name 2| the category|
      |name 3| the category|
      |name 4| the category|
    When I go to the category's page
    And I delete the 3rd info
    Then I should not see "name 3"
