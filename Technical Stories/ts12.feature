Feature: Retrieve Admin Information through a RESTful API
  As a developer
  I want to get an admin by their ID through the API
  So that I can retrieve and display specific information about an admin

  Scenario: Get Existing Admin by ID
    Given the endpoint /api/v1/admins/{id} is available
    When I send a GET request with a valid ID {id}
    Then I receive a response with status 200
    And the Admin Resource corresponding to the ID is included in the Response Body

  Scenario: Get Non-Existing Admin by ID
    Given the endpoint /api/v1/admins/{id} is available
    When I send a GET request with a non-existing ID {id}
    Then I receive a response with status 404
    And a message is included in the Response Body, stating "Admin not found"
