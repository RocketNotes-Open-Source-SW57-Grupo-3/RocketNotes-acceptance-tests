Feature: Add New Teacher

  Scenario: Access the teacher management module
    Given the administrator is logged in
    And they are on the main dashboard of the application
    When they select the 'Teacher Management' option from the main menu
    Then they are redirected to the teacher management module
    And they can see options to 'Add', 'Edit', and 'Delete' teachers

  Scenario: Successful registration of a new teacher
    Given the administrator is in the teacher management module
    And they access the 'Add New Teacher' option
    When they enter valid teacher information (name, email, address, phone)
    And confirm the registration
    Then the system registers the teacher
    And displays a confirmation message "Teacher successfully registered"

  Scenario: Attempt to register a teacher with an existing email
    Given the administrator is in the teacher management module
    And they select the 'Add New Teacher' option
    When they enter an email that is already registered for another teacher
    And confirm the registration
    Then the system does not register the new teacher
    And displays an error message "The email is already registered"

  Scenario: Registration of a teacher with incomplete data
    Given the administrator is in the teacher management module
    And they select the 'Add New Teacher' option
    When they attempt to confirm the registration without completing all required fields
    Then the system does not complete the registration
    And displays error messages indicating "This field is required" for each incomplete field
