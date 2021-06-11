# frozen_string_literal: true

Given(/^I am using the member site$/) do
  visit 'https://member.ha-prod.uat.teladoc.io/'
end

And(/^the member is logged in$/) do
  find('#login_username').set 'member0'
  find('#login_password').set 'test123456'
  find('#submit').click
  sleep 10
end

Then(/^member shouldn't see create HA with element "([^"]*)"$/) do |css_selector|
  expect(page).not_to have_css(css_selector)
end

Then(/^member should see create HA with element "([^"]*)"$/) do |css_selector|
  expect(page).to have_selector(css_selector)
end

Then(/^I click "([^"]*)"$/) do |element|
  find(element).click
end

Given /^I make a mouse movement$/ do
  find(:xpath, '//*[@id="page_wrapper_redesign"]/div/div/div/header[2]/nav/div/div[1]/ul/li[2]').hover
end

When /^I press "([^"]*)"$/ do |element|
  find(element).click
end

When /^I debug$/ do
  binding.pry
end

Then(/^I hover on the "([^"]*)" link$/) do |link_text|
  page.find_link(link_text).hover
end

When /^I click on the "([^"]*)" link$/ do |link|
  eventually { page.click_link link, match: :first }
end

Then (/^I pause$/) do
  sleep 30
end

And(/^Page should not have Health Assistant content$/) do
  expect(page).to have_selector('.conversation')
end

And(/^check the date$/) do
  time = Timecop.scale(3600)
  puts time

  # new_time = Time.local(2008, 9, 1, 12, 0, 0)
  # Timecop.freeze(new_time)
  # sleep(10)
  # if new_time == Time.now
  #   puts '1'
  # else puts "2"
  # end
end
