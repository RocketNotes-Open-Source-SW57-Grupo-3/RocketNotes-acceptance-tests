Feature: Edit Classroom Information

  Scenario: Access the classroom management module for editing
    Given the administrator is logged in
    And they are on the main dashboard of the application
    When they select the 'Classroom Management' option from the main menu
    Then they are redirected to the classroom management module
    And they can see options to 'Add', 'Edit', and 'Delete' classrooms

  Scenario: Successful editing of classroom information
    Given the administrator is in the classroom management module
    And they select an existing classroom to edit its information
    When they update the classroom's data (room number, section, capacity, and floor)
    And confirm the update
    Then the system updates the classroom's data
    And displays a confirmation message "Classroom information successfully updated"

  Scenario: Update classroom information with incomplete data
    Given the administrator is in the process of editing a classroom's information in the classroom management module
    When they attempt to confirm the update without completing all required fields
    Then the system does not update the information
    And displays error messages indicating "This field is required" for each incomplete field
