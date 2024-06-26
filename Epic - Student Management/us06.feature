Feature: Add New Student

  Scenario: Access the student management module
    Given the administrator is logged in
    And they are on the main dashboard of the application
    When they select the 'Student Management' option from the main menu
    Then they are redirected to the student management module
    And they can see options to 'Add', 'Edit', and 'Delete' students

  Scenario: Successful registration of a new student
    Given the administrator is in the student management module
    And they access the 'Add New Student' option
    When they enter valid student information (name, DNI, date of birth, address, parents' names, parents' DNI, contact phone)
    And confirm the registration
    Then the system registers the student
    And displays a confirmation message "Student successfully registered"

  Scenario: Attempt to register a student with an existing DNI
    Given the administrator is in the student management module
    And they attempt to register a new student
    When they use a DNI that is already registered for another student
    And confirm the registration
    Then the system does not register the new student
    And displays an error message "The DNI is already registered"

  Scenario: Registration of a student with incomplete data
    Given the administrator is in the process of registering a new student in the student management module
    When they attempt to confirm the registration without completing all required fields
    Then the system does not complete the registration
    And displays error messages indicating "This field is required" for each incomplete field
