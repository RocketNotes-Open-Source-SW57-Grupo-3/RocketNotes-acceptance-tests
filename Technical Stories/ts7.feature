Feature: Add Teacher through a RESTful API
  As a developer
  I want to add a teacher through the API
  So that it can be available to build features for my applications

  Scenario: Add Teacher with a Unique Email
    Given the endpoint /api/v1/teachers is available
    When I send a POST request with values for name "Alice Johnson", specialty "Mathematics", and email "alice.johnson@email.com"
    Then I receive a response with status 201
    And the Teacher Resource is included in the Response Body with a new ID and the registered values

  Scenario: Add Teacher with an Existing Email
    Given the endpoint /api/v1/teachers is available
    And a Teacher Resource with the email "alice.johnson@email.com" already exists
    When I send a POST request with values for name "Alice Johnson", specialty "Mathematics", and email "alice.johnson@email.com"
    Then I receive a response with status 400
    And a message is included in the Response Body, stating "All constraints are not satisfied for Teachers: A teacher with the same email already exists"
