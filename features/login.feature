Feature: Login

Background:
    Given user is on login page

  @Priority1 @Admin
  Scenario: Login using admin credentials
    Given a user with admin credentials
    And user fills login fields and submits
    And user logs in 
    When user clicks on arrow menu
    And user clicks on profile
    Then user has admin credentials

  @Priority1 @Technician
  Scenario: Login using technician credentials
    Given a user with technician credentials
    And user fills login fields and submits
    And user logs in 
    When user clicks on arrow menu
    And user clicks on profile
    Then user has technician credentials

  @Priority1
  Scenario: Login with an unregistered user
    Given a user with a unregistered credentials
    When user fills login fields and submits
    Then user can not log in

    @Priority1
  Scenario:

