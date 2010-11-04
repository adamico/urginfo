When(/^I delete the (\d+)(?:st|nd|rd|th) info$/) do |pos|
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then(/^I should see the following infos:$/) do |expected_infos_table|
  expected_infos_table.diff!(tableish('table tr', 'td,th'))
end

When(/^I create a valid info$/) do
  steps %Q{
    When I fill in "Name" with "name 1"
    And I press "Create"
  }
end
