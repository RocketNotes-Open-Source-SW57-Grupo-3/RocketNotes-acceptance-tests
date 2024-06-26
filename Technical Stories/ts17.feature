Feature: Update Attendance through a RESTful API
  As a developer
  I want to update attendance records through the API
  So that I can modify existing attendance entries

  Scenario: Update Attendance Record
    Given the endpoint /api/v1/attendance is available
    And an Attendance Resource exists with courseId "123" and studentId "456"
    When I send a PUT request with updated values for courseId "789" and studentId "456"
    Then I receive a response with status 200
    And the Attendance Resource in the Response Body reflects the updated values for courseId
