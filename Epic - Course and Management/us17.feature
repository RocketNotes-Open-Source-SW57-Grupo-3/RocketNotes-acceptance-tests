Feature: Edit Course Information

  Scenario: Access the course management module for editing
    Given the administrator is logged in
    And they are on the main dashboard of the application
    When they select the 'Course Management' option from the main menu
    Then they are redirected to the course management module
    And they can see options to 'Add', 'Edit', and 'Delete' courses

  Scenario: Successful editing of course information
    Given the administrator is in the course management module
    And they select an existing course to edit
    When they update the course details (start time, end time, days, section, assigned teacher)
    And confirm the update
    Then the system updates the course information
    And displays a confirmation message "Course information successfully updated"

  Scenario: Update course information with incomplete data
    Given the administrator is in the process of editing a course's information in the course management module
    When they attempt to confirm the update without completing all required fields
    Then the system does not update the information
    And displays error messages indicating "This field is required" for each incomplete field
