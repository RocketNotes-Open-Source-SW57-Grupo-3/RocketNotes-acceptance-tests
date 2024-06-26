Feature: Add Facility through a RESTful API
  In order to manage facilities in my application
  As a developer
  I want to add facilities through an API

  Scenario: Add Facility with a Unique Name
    Given the endpoint /api/v1/facilities is available
    When I send a POST request to /api/v1/facilities with unique values for name "New Facility", location "1234 Main St", and capacity 100
    Then I receive a response with status 201
    And the Facility Resource is included in the Response Body with a new ID and the registered values for name, location, and capacity

  Scenario: Add Facility with an Existing Name
    Given the endpoint /api/v1/facilities is available
    And a Facility Resource with the name "Existing Facility" already exists
    When I send a POST request to /api/v1/facilities with the name "Existing Facility", location "1234 Main St", and capacity 100
    Then I receive a response with status 400
    And the Response Body includes a message "All constraints are not satisfied for Facilities: A facility with the same name already exists"
