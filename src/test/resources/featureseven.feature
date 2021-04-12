Feature: Application submission
  Scenario: The personal statement length is 99 characters
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 4 personal statements with 99 characters
    And the applicant selects 4 institutions
    When the applicant clicks the submit button
    Then the system does not submit the application
    And the applicant remains on the 'application' page
    And the error output should be "Application not submitted"

  Scenario: The personal statement length is 100 characters
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 4 personal statements with 100 characters
    And the applicant selects 4 institutions
    When the applicant clicks the submit button
    Then the system should submit the application
    And the application is redirect to the 'submission details' page
    And the successful output should be "Application submitted"

  Scenario: The personal statement length is 101 characters
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 4 personal statements with 101 characters
    And the applicant selects 4 institutions
    When the applicant clicks the submit button
    Then the system should submit the application
    And the application is redirect to the 'submission details' page
    And the successful output should be "Application submitted"

  Scenario: The personal statement length is 1500 characters
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 4 personal statements with 1500 characters
    And the applicant selects 4 institutions
    When the applicant clicks the submit button
    Then the system should submit the application
    And the application is redirect to the 'submission details' page
    And the successful output should be "Application submitted"

  Scenario: The personal statement length is 2999 characters
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 4 personal statements with 2999 characters
    And the applicant selects 4 institutions
    When the applicant clicks the submit button
    Then the system should submit the application
    And the application is redirect to the 'submission details' page
    And the successful output should be "Application submitted"

  Scenario: The personal statement length is 3000 characters
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 4 personal statements with 3000 characters
    And the applicant selects 4 institutions
    When the applicant clicks the submit button
    Then the system should submit the application
    And the application is redirect to the 'submission details' page
    And the successful output should be "Application submitted"

  Scenario: The personal statement length is 3001 characters
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 4 personal statements with 3001 characters
    And the applicant selects 4 institutions
    When the applicant clicks the submit button
    Then the system does not submit the application
    And the applicant remains on the 'application' page
    And the error output should be "Application not submitted"

  Scenario: No personal statement has been created by the applicant
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 0 personal statements with 0 characters
    And the applicant selects 4 institutions
    When the applicant clicks the submit button
    Then the system does not submit the application
    And the applicant remains on the 'application' page
    And the error output should be "Application not submitted"

  Scenario: Applicant has created one personal statement
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 1 personal statements with 1500 characters
    And the applicant selects 4 institutions
    When the applicant clicks the submit button
    Then the system should submit the application
    And the application is redirect to the 'submission details' page
    And the successful output should be "Application submitted"

  Scenario: Applicant has created two personal statements
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 2 personal statements with 1500 characters
    And the applicant selects 4 institutions
    When the applicant clicks the submit button
    Then the system should submit the application
    And the application is redirect to the 'submission details' page
    And the successful output should be "Application submitted"

  Scenario: Applicant has created five personal statements
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 5 personal statements with 1500 characters
    And the applicant selects 4 institutions
    When the applicant clicks the submit button
    Then the system should submit the application
    And the application is redirect to the 'submission details' page
    And the successful output should be "Application submitted"

  Scenario: Applicant has created six personal statements
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 6 personal statements with 1500 characters
    And the applicant selects 4 institutions
    When the applicant clicks the submit button
    Then the system should submit the application
    And the application is redirect to the 'submission details' page
    And the successful output should be "Application submitted"

  Scenario: Applicant has created seven personal statements
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 7 personal statements with 1500 characters
    And the applicant selects 4 institutions
    When the applicant clicks the submit button
    Then the system does not submit the application
    And the applicant remains on the 'application' page
    And the error output should be "Application not submitted"

  Scenario: Applicant has selected no institutions
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 4 personal statements with 1500 characters
    And the applicant selects 0 institutions
    When the applicant clicks the submit button
    Then the system does not submit the application
    And the applicant remains on the 'application' page
    And the error output should be "Application not submitted"

  Scenario: Applicant has selected one institutions
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 4 personal statements with 1500 characters
    And the applicant selects 1 institutions
    When the applicant clicks the submit button
    Then the system should submit the application
    And the application is redirect to the 'submission details' page
    And the successful output should be "Application submitted"

  Scenario: Applicant has selected two institutions
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 4 personal statements with 1500 characters
    And the applicant selects 2 institutions
    When the applicant clicks the submit button
    Then  the system should submit the application
    And the application is redirect to the 'submission details' page
    And the successful output should be "Application submitted"

  Scenario: Applicant has selected five institutions
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 4 personal statements with 1500 characters
    And the applicant selects 5 institutions
    When the applicant clicks the submit button
    Then the system should submit the application
    And the application is redirect to the 'submission details' page
    And the successful output should be "Application submitted"

  Scenario: Applicant has selected six institution
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 4 personal statements with 1500 characters
    And the applicant selects 6 institutions
    When the applicant clicks the submit button
    Then the system should submit the application
    And the application is redirect to the 'submission details' page
    And the successful output should be "Application submitted"

  Scenario: Applicant has selected seven institution
    Given the applicant 'A' is on the 'application' page
    And all grades have been verified and predicted for the applicant
    And the applicant enters 4 personal statements with 1500 characters
    And the applicant selects 7 institutions
    When the applicant clicks the submit button
    Then the system does not submit the application
    And the applicant remains on the 'application' page
    And the error output should be "Application not submitted"