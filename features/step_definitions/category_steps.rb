When(/^I create a valid category$/) do
  steps %Q{
    When I fill in "Name" with "name 1"
    And I press "Create"
  }
end

Then(/^I should see the following categories:$/) do |expected_categories_table|
  expected_categories_table.diff!(tableish('table tr', 'td,th'))
end

When(/^I delete the (\d+)(?:st|nd|rd|th) category$/) do |pos|
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end
