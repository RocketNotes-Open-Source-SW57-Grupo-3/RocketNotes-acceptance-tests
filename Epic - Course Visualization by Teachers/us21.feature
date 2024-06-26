Feature: View Courses

  Scenario: Access the 'My Courses' module
    Given the teacher has logged in
    And they are on the main dashboard of the application
    When they select the 'My Courses' option from the main menu
    Then they are redirected to the 'My Courses' module
    And they see a list of all the courses they teach, organized by section

  Scenario: View detailed information of a course
    Given the teacher is in the 'My Courses' module
    And they view the list of courses
    When they select a specific course from the list
    Then the detailed information of the course is displayed
    And it includes the schedule, days, section, and enrolled students

  Scenario: Navigation between different courses
    Given the teacher is in the 'My Courses' module
    When they navigate between different courses in the list
    Then the system displays the specific information for each selected course without leaving the 'My Courses' module

  Scenario: Quick access to course-related functions
    Given the teacher is viewing the details of a course in the 'My Courses' module
    When they select options like 'Register Attendance' or 'Enter Grades' from the course details
    Then they are redirected to the respective functionalities for that course
    And it allows efficient management of their teaching tasks
