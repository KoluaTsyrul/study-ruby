# frozen_string_literal: true

Given(/^List of Users$/) do
  response = get_user_list

  p JSON.parse(response.body)
end

Then(/^Create user account$/) do
  response = create_user

  p JSON.parse(response.body)
end
