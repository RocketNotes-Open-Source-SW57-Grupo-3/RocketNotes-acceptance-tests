Feature: Add Profiles through a RESTful API
  As a developer
  I want to add profiles through the API
  So that it can be available to manage user profiles in my applications

  Scenario: Add Profile with Unique ID
    Given the endpoint /api/v1/profiles is available
    When I send a POST request with values for profileId "123", name "John Doe", and description "Student Profile"
    Then I receive a response with status 201
    And the Profile Resource is included in the Response Body, with a new ID and the registered values for profileId, name, and description

  Scenario: Add Profile with an Existing ID
    Given the endpoint /api/v1/profiles is available
    And a Profile Resource with the same profileId "123" already exists
    When I send a POST request with values for profileId "123", name "Alice Johnson", and description "Teacher Profile"
    Then I receive a response with status 400
    And a message is included in the Response Body, stating "All constraints are not satisfied for Profiles: A profile with the same profileId already exists"
