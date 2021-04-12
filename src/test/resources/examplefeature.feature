Feature: I want to login using my registered email and password
  Scenario: The username exceeds the length
    Given  The system does not contain the credentials
    When  The email field is populated with a username
    And the username is greater than 128 characters
    And the password field is populated with a password
    And the login button is pressed
    Then  The user remains on the login screen
    And is prompted with a login error notification

  Scenario: The username exceeds the length
    Given  The system does not contain the credentials
    When  The email field is populated with the username 'username1'
    And the username is greater than 128 characters
    And the password field is populated with a password
    And validation is 'True'
    And the login button is pressed
    Then  The user remains on the login screen
    And is prompted with a login error notification