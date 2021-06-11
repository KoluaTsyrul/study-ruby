@sign_in
Feature: Sign in as a user

  Scenario: Sign in positive flow
    Given I am not log in
    When I click sign in button
    Then I see the log in for is opened

    When I fill valid creds user name "user" and password "l1E1FXPKTUIs"
    And Click on the login button
    Then I become a log in as "user"

    When I click on the log out button
    Then I become a log out user
