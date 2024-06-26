Feature: Add Admin through a RESTful API
  As a developer
  I want to add an admin through the API
  So that it can be available to build features for my applications

  Scenario: Add Admin with a Unique Email
    Given the endpoint /api/v1/admins is available
    When I send a POST request with values for name "Bob Smith", email "bob.smith@email.com", and role "System Administrator"
    Then I receive a response with status 201
    And the Admin Resource is included in the Response Body with a new ID and the registered values

  Scenario: Add Admin with an Existing Email
    Given the endpoint /api/v1/admins is available
    And an Admin Resource with the email "bob.smith@email.com" already exists
    When I send a POST request with values for name "Bob Smith", email "bob.smith@email.com", and role "System Administrator"
    Then I receive a response with status 400
    And a message is included in the Response Body, stating "All constraints are not satisfied for Admins: An admin with the same email already exists"
