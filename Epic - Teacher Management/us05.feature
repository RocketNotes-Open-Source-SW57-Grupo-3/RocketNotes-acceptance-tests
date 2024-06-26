Feature: Delete Teacher

  Scenario: Access the teacher management module for deletion
    Given the administrator is logged in
    And they are on the main dashboard of the application
    When they select the 'Teacher Management' option from the main menu
    Then they are redirected to the teacher management module
    And they can see options to 'Add', 'Edit', and 'Delete' teachers

  Scenario: Successful deletion of a teacher
    Given the administrator is in the teacher management module
    And they select an existing teacher to delete
    When they confirm the deletion action
    Then the system deletes the teacher record
    And displays a confirmation message "Teacher successfully deleted"

  Scenario: Attempt to delete a teacher with active dependencies
    Given the administrator attempts to delete a teacher who is currently assigned to active classes or has other dependencies
    When they select the teacher and confirm the deletion action
    Then the system does not allow the deletion
    And displays an error message "This teacher cannot be deleted because they are assigned to active classes or have other pending responsibilities"
