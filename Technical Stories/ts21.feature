Feature: Get Grades through a RESTful API
  As a developer
  I want to get grades by course ID and student ID through the API
  So that I can retrieve specific grade information

  Scenario: Get Existing Grade Record by Course ID and Student ID
    Given the endpoint /api/v1/grades/{courseId}/{studentId} is available
    When I send a GET request with a valid courseId "123" and studentId "456"
    Then I receive a response with status 200
    And the Grade Resource corresponding to the courseId and student ID is included in the Response Body

  Scenario: Get Non-Existing Grade Record by Course ID and Student ID
    Given the endpoint /api/v1/grades/{courseId}/{studentId} is available
    When I send a GET request with a non-existing courseId "321" and studentId "654"
    Then I receive a response with status 404
    And a message is included in the Response Body, stating "Grade record not found"
