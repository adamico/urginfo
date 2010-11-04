When(/^I create a valid category$/) do
  steps %Q{
    When I fill in "Name" with "name 1"
    And I press "Create"
  }
end

Then(/^I should see the following categories:$/) do |expected_categories_table|
  expected_categories_table.diff!(tableish('table tr', 'td,th'))
end
