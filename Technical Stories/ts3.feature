Feature: Add Equipment through a RESTful API
  As a developer
  I want to add equipment through the API
  So that it can be available for building features in my applications

  Scenario: Add Equipment with a Unique Serial Number
    Given the endpoint /api/v1/equipments is available
    When I send a POST request with values for name "New Equipment", type "Type A", and serial number "123ABC"
    Then I receive a response with status 201
    And the Equipment Resource is included in the Response Body with a new ID and the registered values

  Scenario: Add Equipment with an Existing Serial Number
    Given the endpoint /api/v1/equipments is available
    And an Equipment Resource with the serial number "123ABC" already exists
    When I send a POST request with values for name "New Equipment", type "Type A", and serial number "123ABC"
    Then I receive a response with status 400
    And a message is included in the Response Body, stating "All constraints are not satisfied for Equipment: An equipment with the same serial number already exists"
