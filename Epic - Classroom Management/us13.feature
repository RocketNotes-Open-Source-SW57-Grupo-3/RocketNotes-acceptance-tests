Feature: Add Maintenance Activity

  Scenario: Access the maintenance management module
    Given the administrator is logged in
    And they are on the main dashboard of the application
    When they select the 'Maintenance Management' option from the main menu
    Then they are redirected to the maintenance management module
    And they can see options to 'Add', 'Edit', and 'Delete' maintenance activities

  Scenario: Successful registration of a maintenance activity
    Given the administrator is in the maintenance management module
    And they access the 'Add Maintenance Activity' option
    When they complete the form with the maintenance activity details (date, description, estimated cost, status)
    And confirm the registration
    Then the system registers the new maintenance activity
    And displays a confirmation message "Maintenance activity successfully registered"

  Scenario: Registration of a maintenance activity with incomplete data
    Given the administrator is in the process of registering a new maintenance activity in the maintenance management module
    When they attempt to confirm the registration without completing all required fields
    Then the system does not complete the registration
    And displays error messages indicating "This field is required" for each incomplete field
