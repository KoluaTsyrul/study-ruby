# frozen_string_literal: true

Given(/^I am not log in$/) do
  @home_page = HomePage.new
  @home_page.load
end

When(/^I click sign in button$/) do
  @home_page.sign_in_link.click
end

Then(/^I see the log in for is opened$/) do
  expect(current_url).to include '/login'
  expect(page).to have_content 'Login'
  expect(page).to have_content 'Password'
end

When(/^I fill valid creds user name "([^"]*)" and password "([^"]*)"$/) do |user_name, password|
  @login_page = LoginPage.new
  @login_page.login_field.set user_name
  @login_page.password_field.set password
end

And(/^Click on the login button$/) do
  @login_page.submit_btn.click
end

Then(/^I become a log in as "([^"]*)"$/) do |user_name|
  expect(page).to have_content "Logged in as #{user_name}"
end

Given(/^I am not logged in as "([^"]*)"$/) do |user_name|
  login user_name, 'l1E1FXPKTUIs'
end

When(/^I click on the log out button$/) do
  page.execute_script('$(".logout").click()')
end

Then(/^I become a log out user$/) do
  expect(page).to have_xpath('//*[@id="account"]/ul/li[1]/a')
end
