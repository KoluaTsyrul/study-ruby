@registration
Feature: Move to website
  As a new visitor
  Sign up the visitor

  Scenario: Sign user positive flow
    Given User on the registration form
    When User filled all valid data to inputs and type pass"qwerty1234"
#    And I debug
    Then User signed up into system