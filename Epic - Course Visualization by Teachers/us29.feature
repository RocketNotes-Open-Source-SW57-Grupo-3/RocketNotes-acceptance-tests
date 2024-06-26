Feature: Product Video

  Scenario: Visitor views the product section
    Given the visitor is on the homepage
    When the visitor navigates to the "About the Product" section
    Then a video is displayed explaining the functionalities, key features, and benefits of the application
