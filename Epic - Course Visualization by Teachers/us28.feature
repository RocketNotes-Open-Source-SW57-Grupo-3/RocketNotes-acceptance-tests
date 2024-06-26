Feature: Team Video

  Scenario: Visitor views the team section
    Given the visitor is on the homepage
    When the visitor navigates to the "About the Team" section
    Then a video is displayed presenting the team members, their roles, and their contributions to the project
