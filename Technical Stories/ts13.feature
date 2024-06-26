Feature: Add Classroom through a RESTful API
  As a developer
  I want to add a classroom through the API
  So that it can be available to build features for my applications

  Scenario: Add Classroom with a Unique Number
    Given the endpoint /api/v1/classrooms is available
    When I send a POST request with values for room number "101", capacity 30, and floor "1st"
    Then I receive a response with status 201
    And the Classroom Resource is included in the Response Body with a new ID and the registered values

  Scenario: Add Classroom with an Existing Room Number
    Given the endpoint /api/v1/classrooms is available
    And a Classroom Resource with the room number "101" already exists
    When I send a POST request with values for room number "101", capacity 30, and floor "1st"
    Then I receive a response with status 400
    And a message is included in the Response Body, stating "All constraints are not satisfied for Classrooms: A classroom with the same room number already exists"
