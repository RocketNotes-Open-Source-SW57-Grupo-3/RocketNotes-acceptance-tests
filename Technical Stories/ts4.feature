Feature: Retrieve Equipment Information through a RESTful API
  As a developer
  I want to get equipment by its ID through the API
  So that I can display specific information about the equipment

  Scenario: Get Existing Equipment by ID
    Given the endpoint /api/v1/equipments/{id} is available
    When I send a GET request with a valid ID {id}
    Then I receive a response with status 200
    And the Equipment Resource corresponding to the ID is included in the Response Body

  Scenario: Get Non-Existing Equipment by ID
    Given the endpoint /api/v1/equipments/{id} is available
    When I send a GET request with a non-existing ID {id}
    Then I receive a response with status 404
    And a message is included in the Response Body, stating "Equipment not found"
