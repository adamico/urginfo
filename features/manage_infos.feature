Feature: Manage infos
  In order to find useful infos for users
  Admin
  wants to manage infos

  Scenario: Register new info
    Given I am on the new info page
    When I fill in "Name" with "name 1"
    And I press "Create"
    Then I should see "name 1"

  Scenario: update existing info
    Given a info exists
    When I go to the info's edit page
    And I fill in "Name" with "new name"
    And I press "Update"
    Then I should see "new name"

  Scenario: Delete info
    Given the following infos:
      |name|
      |name 1|
      |name 2|
      |name 3|
      |name 4|
    When I delete the 3rd info
    Then I should see the following infos:
      |Name|
      |name 1|
      |name 2|
      |name 4|
