Feature: Student Grades

  Scenario: Access the grades module
    Given the teacher has logged in
    And they are on the main dashboard of the application
    When they select the 'Grade Records' option from the main menu or from their class module
    Then they are redirected to the grade records module
    And they see a list of students with names and photos, along with clearly marked rows and columns for each assessment

  Scenario: Create a new grade entry
    Given the teacher is in the grade records module
    And they view the list of students
    When they select "New Grade" for a student
    Then the grade entry interface opens where they can enter or edit grades for that assessment

  Scenario: Successful grade registration
    Given the teacher is in the grade entry interface
    When they enter or edit grades for each assessment
    And select the option to save changes
    Then the system registers the grades
    And displays visual indicators for statuses like "Pass" (green) and "Fail" (red)
    And calculates the average grades, displaying them at the end of each row

  Scenario: Attempt to save incomplete grades
    Given the teacher is entering grades in the grade entry interface
    When they attempt to save the grade without completing all required fields
    Then the system does not save the grade
    And displays an error message indicating "All fields must be completed before saving"
