Feature: Applicant adding sponsors to their application
  Scenario: No sponsors are added added to the application
    Given 0 sponsor codes have been inputted
    When the applicant clicks the submit button
    Then the system adds 0 sponsors to the applicant's application
    And the system outputs "No sponsors added"

  Scenario: One sponsor is added added to the application
    Given 1 sponsor codes have been inputted
    When the applicant clicks the submit button
    Then the system adds 1 sponsors to the applicant's application
    And the system outputs "1 Sponsors added"

  Scenario: Two sponsors are added added to the application
    Given 2 sponsor codes have been inputted
    When the applicant clicks the submit button
    Then the system adds 2 sponsors to the applicant's application
    And the system outputs "2 Sponsors added"

  Scenario: Three sponsors are added added to the application
    Given 3 sponsor codes have been inputted
    When the applicant clicks the submit button
    Then the system adds 3 sponsors to the applicant's application
    And the system outputs "3 Sponsors added"

  Scenario: Four sponsors are added added to the application
    Given 4 sponsor codes have been inputted
    When the applicant clicks the submit button
    Then the system adds 4 sponsors to the applicant's application
    And the system outputs "4 Sponsors added"

  Scenario: Five sponsors are added added to the application
    Given 5 sponsor codes have been inputted
    When the applicant clicks the submit button
    Then the system adds 5 sponsors to the applicant's application
    And the system outputs "5 Sponsors added"

  Scenario: Six sponsors are inputted but no sponsors are added
    Given 6 sponsor codes have been inputted
    When the applicant clicks the submit button
    Then the system adds 0 sponsors to the applicant's application
    And the system outputs "No sponsors added"


  Scenario: Sponsors are added with a privilege
    Given 1 sponsor codes have been inputted
    And the sponsor codes are valid
    And the sponsors privilege is added
    When the applicant clicks the submit button
    Then the system adds 1 sponsors to the applicant's application
    And the system outputs "1 Sponsors added with privileges"

  Scenario: Sponsors are added with no privilege
    Given 1 sponsor codes have been inputted
    And the sponsor codes are valid
    And no sponsors privilege is added
    When the applicant clicks the submit button
    Then the system adds 1 sponsors to the applicant's application
    And the system outputs "1 Sponsors added without privileges"

  Scenario: An invalid sponsor code has been added
    Given 1 sponsor codes have been inputted
    And the sponsor codes are invalid
    When the applicant clicks the submit button
    Then the system adds 0 sponsors to the applicant's application
    And the system outputs "No sponsor added"

