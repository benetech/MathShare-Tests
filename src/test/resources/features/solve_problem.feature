Feature: Solve Problem
  As a user I should able to solve a math problem

 Scenario: Open a problem
    Given I navigate to "https://matheditor-qa.diagramcenter.org/"
    When I click on element having xpath "(//span[contains(@class, 'btn-huge') and contains(@class, 'navItemButton')])[2]"
    Then element having id "workArea" should be present
    Then Check Accessibility: max 3 violations
 
 Scenario: Close browser
    Then I close browser