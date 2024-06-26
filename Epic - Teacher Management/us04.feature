Feature: Edit Teacher Information

  Scenario: Access the teacher management module for editing
    Given the administrator is logged in
    And they are on the main dashboard of the application
    When they select the 'Teacher Management' option from the main menu
    Then they are redirected to the teacher management module
    And they can see options to 'Add', 'Edit', and 'Delete' teachers

  Scenario: Successful editing of teacher information
    Given the administrator is in the teacher management module
    And they select an existing teacher to edit their information
    When they update the teacher's data (name, email, address, phone)
    And confirm the update
    Then the system updates the teacher's data
    And displays a confirmation message "Teacher information successfully updated"

  Scenario: Attempt to update with an email already existing for another teacher
    Given the administrator is in the teacher management module
    And they select an existing teacher to edit their information
    When they change the teacher's email to one that is already registered for another teacher
    And confirm the update
    Then the system does not update the information
    And displays an error message "The email is already registered with another teacher"

  Scenario: Update teacher information with incomplete data
    Given the administrator is in the teacher management module
    And they select an existing teacher to edit their information
    When they attempt to confirm the update without completing all required fields
    Then the system does not update the information
    And displays error messages indicating "This field is required" for each incomplete field
