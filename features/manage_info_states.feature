Feature: manage info states
  In order to give users updated infos
  Admin
  wants to manage infos publication states

  Scenario Outline: publish draft infos
    Given <info> exists
    When I go to the info's page
    And I select "published" from "info_state_event"
    And I press "Update state"
    Then I should see "published"
    Scenarios:
      | info          |
      | an info       |
      | a pending_info|

  Scenario: put aside published infos
    Given a published_info exists
    When I go to the info's page
    And I select "pending" from "info_state_event"
    And I press "Update state"
    Then I should see "pending"

  Scenario: show appropriate classes for state css container in info lists
    Given an info exists
     And a pending_info exists
     And an published_info exists
    When I go to the infos page
    Then I should see "draft" within "td.draft"
    And I should see "pending" within "td.pending"
    And I should see "published" within "td.published"
