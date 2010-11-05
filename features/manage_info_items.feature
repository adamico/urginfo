@javascript
Feature: manage info items
  In order to have multiple items for infos
  Admin
  Wants to manage info items

  Background:
    Given a category exists

  Scenario: add phones to existing info
    Given an info exists with name: "info1", category: the category
    When I go to the info's edit page
    And I add a valid phone with name: "phone1" and number: "0472116911"
    And I press "Update"
    Then I should see "info1"
    And I should see "phone1"
    And I should see "0472116911"

  Scenario: remove phone from existing info
    Given an info exists with name: "info1", category: the category
    And a phone exists with info: the info, name: "phone1"
    When I go to the info's edit page
    And I follow "Remove phone"
    And I press "Update"
    Then I should not see "phone1"

  Scenario: add phones to new info
    When I go to the category's page
    And I follow "New info"
    And I fill in "Name" with "info1"
    And I add a valid phone with name: "phone1" and number: "0472116911"
    And I press "Create"
    Then I should see "info1"
    And I should see "phone1"
    And I should see "0472116911"
