Feature: Delete Attendance Records through a RESTful API
  As a developer
  I want to delete attendance records by course ID and student ID through the API
  So that I can manage attendance records by removing those that are no longer needed

  Scenario: Delete Existing Attendance Record by Course ID and Student ID
    Given the endpoint /api/v1/attendance/{courseId}/{studentId} is available
    When a DELETE request is sent with a valid courseId "123" and studentId "456"
    Then I receive a response with status 204
    And the attendance record corresponding to the courseId and student ID is removed from the system

  Scenario: Delete Attendance Record with Non-Existing Course ID and Student ID
    Given the endpoint /api/v1/attendance/{courseId}/{studentId} is available
    When a DELETE request is sent with a non-existing courseId "321" and studentId "654"
    Then I receive a response with status 404
    And a message is included in the Response Body, stating "Attendance record not found"
