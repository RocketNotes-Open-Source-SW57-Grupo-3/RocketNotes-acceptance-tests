Feature: Add New Classroom

  Scenario: Access the classroom management module
    Given the administrator is logged in
    And they are on the main dashboard of the application
    When they select the 'Classroom Management' option from the main menu
    Then they are redirected to the classroom management module
    And they can see options to 'Add', 'Edit', and 'Delete' classrooms

  Scenario: Successful registration of a new classroom
    Given the administrator is in the classroom management module
    And they access the 'Add New Classroom' option
    When they enter valid classroom information (room number, section, capacity, and floor)
    And confirm the registration
    Then the system registers the new classroom
    And displays a confirmation message "Classroom successfully registered"

  Scenario: Registration attempt with incomplete data
    Given the administrator is in the process of registering a new classroom in the classroom management module
    When they attempt to confirm the registration without completing all required fields
    Then the system does not complete the registration
    And displays error messages indicating "This field is required" for each incomplete field
