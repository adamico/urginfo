Feature: Manage infos
  In order to find useful infos
  User
  wants to manage infos
  
  Scenario: Register new info
    Given I am on the new info page
    When I fill in "Name" with "name 1"
    And I fill in "State" with "state 1"
    And I fill in "Ancestry" with "ancestry 1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "state 1"
    And I should see "ancestry 1"

  # Rails generates Delete links that use Javascript to pop up a confirmation
  # dialog and then do a HTTP POST request (emulated DELETE request).
  #
  # Capybara must use Culerity/Celerity or Selenium2 (webdriver) when pages rely
  # on Javascript events. Only Culerity/Celerity supports clicking on confirmation
  # dialogs.
  #
  # Since Culerity/Celerity and Selenium2 has some overhead, Cucumber-Rails will
  # detect the presence of Javascript behind Delete links and issue a DELETE request 
  # instead of a GET request.
  #
  # You can turn this emulation off by tagging your scenario with @no-js-emulation.
  # Turning on browser testing with @selenium, @culerity, @celerity or @javascript
  # will also turn off the emulation. (See the Capybara documentation for 
  # details about those tags). If any of the browser tags are present, Cucumber-Rails
  # will also turn off transactions and clean the database with DatabaseCleaner 
  # after the scenario has finished. This is to prevent data from leaking into 
  # the next scenario.
  #
  # Another way to avoid Cucumber-Rails' javascript emulation without using any
  # of the tags above is to modify your views to use <button> instead. You can
  # see how in http://github.com/jnicklas/capybara/issues#issue/12
  #
  Scenario: Delete info
    Given the following infos:
      |name|state|ancestry|
      |name 1|state 1|ancestry 1|
      |name 2|state 2|ancestry 2|
      |name 3|state 3|ancestry 3|
      |name 4|state 4|ancestry 4|
    When I delete the 3rd info
    Then I should see the following infos:
      |Name|State|Ancestry|
      |name 1|state 1|ancestry 1|
      |name 2|state 2|ancestry 2|
      |name 4|state 4|ancestry 4|
