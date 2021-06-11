Feature: Sign in
  As a visitor
  I want to sign in

  Scenario: Sign in positive flow
    Given I am not logged in as "user"
    Then I become a log in as "user"