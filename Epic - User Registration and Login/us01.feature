Feature: User Registration

  Scenario: Successful registration of a new user
    Given the administrator or teacher is not registered in the system
    And they are on the registration form page of the application website
    When they complete a valid set of personal data (name, email, password)
    And select a role of 'administrator' or 'teacher'
    Then the system creates the account and redirects the user to a confirmation page
    And displays the message "Your registration was successful"

  Scenario: Registration attempt with an already registered email
    Given the administrator or teacher tries to register using an email that is already associated with an existing account
    And they are on the registration page
    When they complete the registration form with this email
    And submit it
    Then the system does not create the account
    And displays a message on the registration page that says "The email is already registered. Please use another email or log in"

  Scenario: Registration with incomplete data
    Given the administrator or teacher is on the registration page
    When they attempt to submit the form without completing all required fields
    Then the system does not process the form
    And displays messages directly below the incomplete fields indicating "This field is required"
