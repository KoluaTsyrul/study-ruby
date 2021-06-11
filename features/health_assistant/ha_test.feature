@ha
Feature: As a member with permission for HA to my group and my state I should be able to use HA.

  Scenario: Member without permission check if he/she has button to create message room with HA
    Given I am using the member site
    And   the member is logged in
    Then member should see create HA with element ".health-assistant-button"
    And I click ".health-assistant-button"
    And check the date
    And I debug
#    When  I hover on the "Messages" link
#    And   I click on the "Inbox" link
#    And Page should not have Health Assistant content
    And I pause


