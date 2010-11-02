Feature: manage infos tree
  In order to easily find infos by argument
  Admin
  wants to organize infos in a tree structure

  Scenario: create child info for existing info
    Given an info exists with name: "parent info"
    When I go to the info's page
    And I follow "Create child"
    And I create a valid info
    Then the info should have 1 children
    And I should see "Parent: parent info"

  Scenario: show parent field in info page
    Given an info exists with name: "parent info"
    And another info exists with parent: the info
    When I go to the 2nd info page
    Then I should see "Parent: parent info"

  Scenario: hide parent field for root infos
    Given an info exists
    When I go to the info page
    Then I should not see "Parent:"
