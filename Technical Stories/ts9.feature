Feature: Add Course through a RESTful API
  As a developer
  I want to add a course through the API
  So that it can be available to build features for my applications

  Scenario: Add Course with a Unique Name
    Given the endpoint /api/v1/courses is available
    When I send a POST request with values for name "Introduction to Algebra", description "A beginner course on Algebra", and assigned teacher ID {teacherId}
    Then I receive a response with status 201
    And the Course Resource is included in the Response Body with a new ID and the registered values

  Scenario: Add Course with an Existing Name
    Given the endpoint /api/v1/courses is available
    And a Course Resource with the name "Introduction to Algebra" already exists
    When I send a POST request with values for name "Introduction to Algebra", description "A different approach to Algebra", and assigned teacher ID {teacherId}
    Then I receive a response with status 400
    And a message is included in the Response Body, stating "All constraints are not satisfied for Courses: A course with the same name already exists"
