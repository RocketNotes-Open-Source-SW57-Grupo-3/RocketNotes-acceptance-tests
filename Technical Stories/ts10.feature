Feature: Delete Course by ID through a RESTful API
  As a developer
  I want to delete a course by its ID through the API
  So that I can manage courses by removing those that are no longer needed

  Scenario: Delete Existing Course by ID
    Given the endpoint /api/v1/courses/{id} is available
    When a DELETE request is sent with a valid ID {id}
    Then I receive a response with status 204
    And the course corresponding to the ID is removed from the system

  Scenario: Delete Course with a Non-Existing ID
    Given the endpoint /api/v1/courses/{id} is available
    When a DELETE request is sent with a non-existing ID {id}
    Then I receive a response with status 404
    And a message is included in the Response Body, stating "Course not found"
