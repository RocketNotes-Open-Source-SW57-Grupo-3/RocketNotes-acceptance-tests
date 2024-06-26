Feature: Student Attendance

  Scenario: Navigation to attendance module
    Given the teacher has logged in
    And they are viewing the sections they teach on their main page
    When they select a specific section
    And choose a course within that section
    Then they are presented with the option to 'Register Attendance'
    And upon entering, they see a list of students along with previously recorded attendance dates

  Scenario: Create a new attendance entry
    Given the teacher is in the 'Register Attendance' interface
    And they view the list of students with previous attendance dates
    When they select the 'Create New Attendance' button
    Then a new column for attendance is generated with the current date by default

  Scenario: Successful attendance registration
    Given the teacher has generated a new attendance column with the current date
    And they are marking attendance
    When they select green icons (indicating presence) or red icons (indicating absence) for each student
    And confirm the registration
    Then the system registers the students' attendance for the current date
    And displays a confirmation message "Attendance successfully registered"
