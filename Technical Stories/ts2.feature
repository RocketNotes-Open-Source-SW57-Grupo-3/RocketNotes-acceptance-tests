Feature: Retrieve Facility Information through a RESTful API
  As a developer
  I want to retrieve a facility by its ID through the API
  So that I can display specific information about a facility

  Scenario: Get Existing Facility by ID
    Given the endpoint /api/v1/facilities/{id} is available
    When I send a GET request with a valid ID {id}
    Then I receive a response with status 200
    And the Facility Resource corresponding to the ID is included in the Response Body

  Scenario: Get Non-Existing Facility by ID
    Given the endpoint /api/v1/facilities/{id} is available
    When I send a GET request with a non-existing ID {id}
    Then I receive a response with status 404
    And a message is included in the Response Body, stating "Facility not found"
