Given(/^the user '(.*?)'\/'(.*?)' with password of '(.*?)'$/) do |username, email, password|
  User.create(username: username, email: email, password: password, password_confirmation: password)
end

Given(/^the user '(.*?)' is logged in$/) do |username|
  user = User.where(username: username).first
  login user
end

When(/^I go to the homepage$/) do
  visit '/'
end

When(/^I (?:click|press) '(.*?)'$/) do |text|
  click_link_or_button text
end

When(/^I choose '(.*?)' from '(.*?)'$/) do |option, field_name|
  select option, from: field_name
end

When(/^I fill in '(.*?)' for '(.*?)'$/) do |text, field_name|
  fill_in field_name, with: text
end

Then(/^I should see '(.*?)'$/) do |text|
  page.should have_content text
end

Then(/^I should not see '(.*?)'$/) do |text|
  page.should_not have_content text
end

Then(/^I should see a '(.*?)' button$/) do |name|
  find_button(name).should_not be_nil
end
