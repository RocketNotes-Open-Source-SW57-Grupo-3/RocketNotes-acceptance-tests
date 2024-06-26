Feature: Language Selection

  Scenario: Default Language Display
    Given a visitor accesses the RocketNotes Landing Page for the first time
    When they observe the user interface
    Then the site displays content in English by default
    And it clearly offers the option to change the language through a visible selector

  Scenario: Change Language to Spanish
    Given a visitor wants to read the information in their preferred language
    When they select "Spanish" from the language selector on the Landing Page
    Then the page content, including all sections and menus, instantly changes to Spanish
