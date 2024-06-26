Feature: User Login

  Scenario: Successful login
    Given the administrator or teacher is registered in the system
    And they are on the login page
    When they enter their email and password correctly
    Then the system verifies the credentials
    And the user is redirected to their role-specific dashboard
    And has access to the corresponding functionalities

  Scenario: Login attempt with incorrect credentials
    Given the administrator or teacher is on the login page
    When they enter an incorrect email or password
    Then the system does not grant access
    And displays a message on the login page indicating "Incorrect email or password, please try again"

  Scenario: Login attempt with empty fields
    Given the administrator or teacher is on the login page
    When they attempt to log in without completing the email or password fields
    Then the system does not process the login request
    And displays messages indicating "This field is required" for the incomplete fields
