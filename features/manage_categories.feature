Feature: manage categories
  In order to easily find infos by argument
  Admin
  wants to organize categories

  Scenario: create new category
    When I go to the new category page
    And I create a valid category
    Then I should see "name 1"

  Scenario: update existing category
    Given a category exists
    When I go to the category's edit page
    And I fill in "Name" with "new name"
    And I press "Update"
    Then I should see "new name"

  Scenario: Delete category
    Given the following categories exist:
      |name|
      |name 1|
      |name 2|
      |name 3|
      |name 4|
    When I go to the categories page
    And I delete the 3rd category
    Then I should not see "name 3"

  Scenario: create child category
    Given an category exists
    When I go to the category's page
    And I follow "Create child"
    And I create a valid category
    Then the category should have 1 children

  Scenario: show breadcrumb for categories with ancestors
    Given an category exists with name: "parent"
    And another category exists with parent: the category, name: "child"
    When I go to the 2nd category page
    Then I should see "parent > child"

  Scenario: show breadcrumb without self in categories list
    Given an category exists with name: "parent"
    And another category exists with parent: the category, name: "child"
    And another category exists with parent: the 2nd category, name: "gchild"
    When I go to the categories page
    Then I should see the following categories:
      |Name  |Ancestors     |
      |parent|              |
      |child |parent        |
      |gchild|parent > child|

  Scenario: show category children
    Given an category exists
    And another category exists with parent: the category, name: "child"
    When I go to the first category's page
    Then I should see "child"

  Scenario: show edit link for children category
    Given an category exists
    And another category exists with parent: the category
    When I go to the first category's page
    Then I should see "Edit this child"
