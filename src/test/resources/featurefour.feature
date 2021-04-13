Feature: Applicant adding sponsor
  Scenario: No sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 0 sponsors have been selected
    When the applicant clicks the submit button
    Then the system does not add any sponsors to the application
    And the applicant remains on the 'sponsor selection' page
    And the error output should be "no sponsor selected"

  Scenario: One sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 1 sponsors have been selected
    And the sponsors unique codes are added
    When the applicant clicks the submit button
    Then the system adds the sponsors to the application
    And the applicant is redirect to the 'application homepage' page
    And the successful output should be "sponsors added"

  Scenario: One sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 2 sponsors have been selected
    And the sponsors unique codes are added
    When the applicant clicks the submit button
    Then the system adds the sponsors to the application
    And the applicant is redirect to the 'application homepage' page
    And the successful output should be "sponsors added"

  Scenario: One sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 3 sponsors have been selected
    And the sponsors unique code is added
    When the applicant clicks the submit button
    Then the system adds the sponsors to the application
    And the applicant is redirect to the 'application homepage' page
    And the successful output should be "sponsors added"

  Scenario: One sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 4 sponsors have been selected
    And the sponsors unique code is added
    When the applicant clicks the submit button
    Then the system adds the sponsors to the application
    And the applicant is redirect to the 'application homepage' page
    And the successful output should be "sponsors added"

  Scenario: One sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 5 sponsors have been selected
    And the sponsors unique code is added
    When the applicant clicks the submit button
    Then the system adds the sponsors to the application
    And the applicant is redirect to the 'application homepage' page
    And the successful output should be "sponsors added"

  Scenario: One sponsors are added added to the application
    Given the applicant is on the 'sponsor selection' page
    And 6 sponsors have been selected
    And the sponsors unique code is added
    When the applicant clicks the submit button
    Then the system adds the sponsors to the application
    And the applicant remains on the 'sponsor selection' page
    And the error output should be "no sponsor selected"