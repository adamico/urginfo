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

  Scenario: show breadcrumb for infos with ancestors
    Given an info exists with name: "parent"
    And another info exists with parent: the info, name: "child"
    When I go to the 2nd info page
    Then I should see "parent > child"

  Scenario: show breadcrumb without self in infos list
    Given an info exists with name: "parent"
    And another info exists with parent: the info, name: "child"
    And another info exists with parent: the 2nd info, name: "gchild"
    When I go to the infos page
    Then I should see the following infos:
      |Name  |Ancestors     |
      |parent|              |
      |child |parent        |
      |gchild|parent > child|

  Scenario: show info children
    Given an info exists
    And another info exists with parent: the info, name: "child"
    When I go to the first info's page
    Then I should see "child"

  Scenario: show edit link for children info
    Given an info exists
    And another info exists with parent: the info
    When I go to the first info's page
    Then I should see "Edit this child"
