Feature: Spanish Language Support

  Scenario: User selects Spanish language from the language options
    Given the user is interacting with the application
    When the user selects "Spanish" from a language selector on the homepage
    Then the content of the application is displayed in Spanish
    And it includes all navigation elements, content, labels, messages, and help text
