Given /^I am on the home page$/ do
  visit "/webapp/index.html"
end

Given /^I have entered "([^"]*)" into the "([^"]*)" field$/ do |text, field|
  fill_in field, :with => text
end

When /^I click the Sign In button$/ do
  find("#signInButton").click
end

When /^I click on the "([^"]*)" button$/ do |button_text|
  click_button button_text
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

