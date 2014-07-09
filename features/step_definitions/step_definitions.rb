Given(/^the user '(.*?)' with password '(.*?)' presses '(.*?)'$/) do |username, pw, text|
  User.create(username: username, email: "#{username}@email.com", password: pw, password_confirmation: pw)
  visit '/'
  click_link_or_button text
end

Given(/^the user '(.*?)' logs in with password '(.*?)'$/) do |username, pw|
  User.create(username: username, email: "#{username}@email.com", password: pw, password_confirmation: pw)
  visit '/users/sign_in'
  fill_in 'Login', with: username
  fill_in 'Password', with: pw
  click_link_or_button 'Sign in'
end

Given(/^I am logged in as admin$/) do
  username, password = 'admin', '12345678'
  user = User.create(username: username, email: "#{username}@email.com", password: password, password_confirmation: password)
  user.update_column :admin, true
  visit '/users/sign_in'
  fill_in 'Login', with: username
  fill_in 'Password', with: password
  click_link_or_button 'Sign in'
end

Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^(.*?) (.*?) (?:message|messages)$/) do |num, state|
  user = User.all.first
  (1..num.to_i).each do |num|
    msg  = Message.create(title: "title#{num}", body: "body#{num}", reason: "reason#{num}", user: user)
    msg.update_column :read, true if state == 'read'
  end
end

Given(/^a '(.*?)' with the '(.*?)' '(.*?)'$/) do |class_name, column, value|
  class_name.constantize.create column.parameterize.underscore.to_sym => value
end

When(/^I (?:click|press) '(.*?)'$/) do |text|
  click_link_or_button text
end

When(/^I (?:click|press) the header '(.*?)'$/) do |text|
  find('h3', text: 'text').click
end

When(/^I choose '(.*?)' from '(.*?)'$/) do |option, field_name|
  select option, from: field_name
end

When(/^I fill in '(.*?)' for '(.*?)'$/) do |text, field_name|
  fill_in field_name, with: text
end

When(/^I hover over '(.*?)'$/) do |name|
  find('.nav_item', text: 'About').hover
end

When(/^show me the page$/) do
  save_and_open_page
end

When(/^I refresh '(.*?)'$/) do |page|
  visit("/#{page.downcase}")
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

Then(/^there should be '(.*?)' '(.*?)'$/) do |num, name|
  page.should have_css(".#{name.singularize}_list li.list_item", :count=>num)
end

Then(/^the input should be required$/) do
  expect(page).to have_xpath("//input[@required='required']")
end
