Feature: Add Grades through a RESTful API
  As a developer
  I want to add grades through the API
  So that it can be available to track student performance in my applications

  Scenario: Add Grade Record
    Given the endpoint /api/v1/grades is available
    When I send a POST request with values for courseId "123", studentId "456", and grade "A"
    Then I receive a response with status 201
    And the Grade Resource is included in the Response Body, with a new ID and the registered values for courseId, studentId, and grade

  Scenario: Add Grade Record for an Existing Entry
    Given the endpoint /api/v1/grades is available
    And a Grade Resource with the same courseId "123" and studentId "456" already exists
    When I send a POST request with values for courseId "123", studentId "456", and grade "B"
    Then I receive a response with status 400
    And a message is included in the Response Body, with the value "All constraints are not satisfied for Grades: A grade record for the same course and student already exists"
