Feature: Add Student through a RESTful API
  As a developer
  I want to add a student through the API
  So that it can be available for building features in my applications

  Scenario: Add Student with a Unique Name
    Given the endpoint /api/v1/students is available
    When I send a POST request with values for name "John Doe", age 20, and address "1234 College St"
    Then I receive a response with status 201
    And the Student Resource is included in the Response Body with a new ID and the registered values

  Scenario: Add Student with an Existing Name
    Given the endpoint /api/v1/students is available
    And a Student Resource with the name "John Doe" already exists
    When I send a POST request with values for name "John Doe", age 20, and address "1234 College St"
    Then I receive a response with status 400
    And a message is included in the Response Body, stating "All constraints are not satisfied for Students: A student with the same name already exists"
