Feature: Add New Course

  Scenario: Access the course management module
    Given the administrator is logged in
    And they are on the main dashboard of the application
    When they select the 'Course Management' option from the main menu
    Then they are redirected to the course management module
    And they can see options to 'Add', 'Edit', and 'Delete' courses

  Scenario: Successful registration of a new course
    Given the administrator is in the course management module
    And they access the 'Add New Course' option
    When they complete the form with the course details (start time, end time, days, section, assigned teacher)
    And confirm the registration
    Then the system registers the new course
    And displays a confirmation message "Course successfully registered"

  Scenario: Registration of a course with incomplete data
    Given the administrator is in the process of registering a new course in the course management module
    When they attempt to confirm the registration without completing all required fields
    Then the system does not complete the registration
    And displays error messages indicating "This field is required" for each incomplete field
