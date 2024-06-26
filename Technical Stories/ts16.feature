Feature: Add Attendance through a RESTful API
  As a developer
  I want to add attendance records through the API
  So that it can be available to track student attendance in my applications

  Scenario: Add Attendance Record
    Given the endpoint /api/v1/attendance is available
    When I send a POST request with values for courseId "123" and studentId "456"
    Then I receive a response with status 201
    And the Attendance Resource is included in the Response Body, with a new ID and the registered values for courseId and studentId

  Scenario: Add Attendance Record for an Existing Entry
    Given the endpoint /api/v1/attendance is available
    And an Attendance Resource with the same courseId "123" and studentId "456" already exists
    When I send a POST request with values for courseId "123" and studentId "456"
    Then I receive a response with status 400
    And a message is included in the Response Body, with the value "All constraints are not satisfied for Attendance: An attendance record for the same course and student already exists"
