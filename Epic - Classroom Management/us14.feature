Feature: Edit Maintenance Activity

  Scenario: Access the maintenance management module for editing
    Given the administrator is logged in
    And they are on the main dashboard of the application
    When they select the 'Maintenance Management' option from the main menu
    Then they are redirected to the maintenance management module
    And they can see options to 'Add', 'Edit', and 'Delete' maintenance activities

  Scenario: Successful editing of a maintenance activity
    Given the administrator is in the maintenance management module
    And they select an existing maintenance activity to edit
    When they update the activity's status (e.g., from 'In Progress' to 'Complete')
    And confirm the update
    Then the system updates the maintenance activity's status
    And displays a confirmation message "Maintenance activity successfully updated"

  Scenario: Update maintenance activity with incomplete data
    Given the administrator is in the process of editing a maintenance activity's status in the maintenance management module
    When they attempt to confirm the update without completing the required fields
    Then the system does not perform any changes
    And displays a message indicating "No changes detected in the activity status"
