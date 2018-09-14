Feature: Solve Problem
  As a user I should be able to solve a math problem

 Scenario: Open a problem
    Given I navigate to "https://matheditor-qa.diagramcenter.org/"
    When I click on element having xpath "//*[@id="LeftNavigation"]/div[2]/div[2]/div[1]/span[1]"
    Then element having id "workArea" should be present
    When I enter "first comment" into input field having id "mathAnnotation"
    And I click on element having xpath "//*[@id="dotTimesBtn"]"
    And I click on element having xpath "//*[@id="triangleBtn"]"
    And I click on element having xpath "//*[@id="control-buttons"]/button[1]"
    Then element having id "mathStep-2" should be present
    And I enter "second comment" into input field having id "mathAnnotation"
    And I click on element having xpath "//*[@id="congruentBtn"]"
    And I click on element having xpath "//*[@id="isEqualToBtn"]"
    And I click on element having xpath "//*[@id="control-buttons"]/button[2]"
    Then element having id "mathStep-3" should be present
    And I enter "third comment" into input field having id "mathAnnotation"
    And I click on element having xpath "//*[@id="divisionBtn"]"
    And I click on element having xpath "//*[@id="piBtn"]"
    And I click on element having xpath "//*[@id="control-buttons"]/button[2]"
    Then element having id "mathStep-4" should be present
    And I enter "fourth comment" into input field having id "mathAnnotation"
    And I click on element having xpath "//*[@id="squareRootBtn"]"
    And I click on element having xpath "//*[@id="control-buttons"]/button[2]"
    Then element having id "mathStep-5" should be present
    And I click on element having xpath "//*[@id="MainWorkArea"]/div[1]/div[2]/button[2]"
    Then I wait 5 seconds for element having xpath "//*[@id="MainWorkWrapper"]/div[1]/span[1]/div[1]" to display
    And Check Accessibility: max 4 violations
    And I click on element having xpath "//*[@id="backBtn"]"
    Then element having xpath "//*[@id="LeftNavigation"]/div[1]/div[1]/div[1]/h2[1]" should be present
    
 
 Scenario: Close browser
    Then I close browser
