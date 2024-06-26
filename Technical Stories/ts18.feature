Feature: Get Attendance Records through a RESTful API
  As a developer
  I want to get attendance records by course ID and student ID through the API
  So that I can retrieve specific attendance information

  Scenario: Get Existing Attendance Record by Course ID and Student ID
    Given the endpoint /api/v1/attendance/{courseId}/{studentId} is available
    When I send a GET request with a valid courseId "123" and studentId "456"
    Then I receive a response with status 200
    And the Attendance Resource corresponding to the courseId and student ID is included in the Response Body

  Scenario: Get Non-Existing Attendance Record by Course ID and Student ID
    Given the endpoint /api/v1/attendance/{courseId}/{studentId} is available
    When I send a GET request with a non-existing courseId "321" and studentId "654"
    Then I receive a response with status 404
    And a message is included in the Response Body, with the value "Attendance record not found"
