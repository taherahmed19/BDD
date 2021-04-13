Feature: Applicant adding sponsors to application
  Scenario: No sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 0 sponsors have been selected
    And 0 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 0 sponsors to the application
    And the applicant remains on the 'sponsor selection' page
    And the error output should be "no sponsor selected"

  Scenario: One sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 1 sponsors have been selected
    And 1 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 1 sponsors to the application
    And the applicant is redirect to the 'application homepage' page
    And the successful output should be "sponsors added"

  Scenario: One sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 2 sponsors have been selected
    And 2 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 2 sponsors to the application
    And the applicant is redirect to the 'application homepage' page
    And the successful output should be "sponsors added"

  Scenario: One sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 3 sponsors have been selected
    And 3 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 3 sponsors to the application
    And the applicant is redirect to the 'application homepage' page
    And the successful output should be "sponsors added"

  Scenario: One sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 4 sponsors have been selected
    And 4 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 4 sponsors to the application
    And the applicant is redirect to the 'application homepage' page
    And the successful output should be "sponsors added"

  Scenario: One sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 5 sponsors have been selected
    And 5 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 5 sponsors to the application
    And the applicant is redirect to the 'application homepage' page
    And the successful output should be "sponsors added"

  Scenario: One sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 6 sponsors have been selected
    And 6 sponsor codes have been added
    When the applicant clicks the submit button
    Then the system adds 6 sponsors to the application
    And the applicant remains on the 'sponsor selection' page
    And the error output should be "no sponsor selected"