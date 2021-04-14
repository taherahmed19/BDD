Feature: Applicant adding sponsors to application
  Scenario: No sponsors are added added to the application
    Given 0 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 0 sponsors to the application
    And the system outputs "No sponsors added"

  Scenario: One sponsor is added added to the application
    Given 1 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 1 sponsors to the application
    And the system outputs "Sponsors added"

  Scenario: Two sponsors are added added to the application
    Given 2 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 2 sponsors to the application
    And the system outputs "Sponsors added"

  Scenario: Three sponsors are added added to the application
    Given 3 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 3 sponsors to the application
    And the system outputs "Sponsors added"

  Scenario: Four sponsors are added added to the application
    Given 4 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 4 sponsors to the application
    And the system outputs "Sponsors added"

  Scenario: Five sponsors are added added to the application
    Given 5 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 5 sponsors to the application
    And the system outputs "Sponsors added"

  Scenario: Six sponsors are added added to the application
    Given 6 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 0 sponsors to the application
    And the system outputs "No sponsors added"


  Scenario: A valid sponsor code has been added
    Given 1 sponsors have been selected
    And 1 sponsor codes have been added
    And the sponsor codes are valid
    And the sponsors privilege is added
    When the applicant clicks the submit button
    Then the system adds 1 sponsors to the application
    And the system outputs "Sponsors added"

  Scenario: An invalid sponsor code has been added
    Given 1 sponsors have been selected
    And 1 sponsor codes have been added
    And the sponsor codes are invalid
    When the applicant clicks the submit button
    Then the system adds 0 sponsors to the application
    And the system outputs "No sponsor selected"

