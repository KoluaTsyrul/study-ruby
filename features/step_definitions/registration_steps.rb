# frozen_string_literal: true

Given(/^User on the registration form$/) do
  @registration_page = RegistrationPage.new
  @registration_page.load
end

When(/^User filled all valid data to inputs and type pass"([^"]*)"$/) do |user_pass|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  fill_registration_form first_name, user_pass, first_name, last_name, email
end

Then(/^User signed up into system$/) do
  expect(page).to have_content 'Login'
end
