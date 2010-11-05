When(/^I add a valid phone with name: "(\w+)" and number: "(\w+)"$/) do |name, number|
  steps %Q{
    When I follow "Add phone"
    And I fill in "Phone" with "#{name}"
    And I fill in "Number" with "#{number}"
  }
end
