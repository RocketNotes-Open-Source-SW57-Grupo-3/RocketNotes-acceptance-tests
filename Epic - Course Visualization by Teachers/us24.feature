Feature: Pricing Plans

  Scenario: View Pricing Options
    Given a school administrator is looking for information on available plans
    When they access the "Affordable Pricing" section of the Landing Page
    Then they see a clear comparison of the "Basic", "Premium", and "Expert" plans
    And it highlights prices and included features
