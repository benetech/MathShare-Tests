Feature: Problem Solving
  As a user I should be able to solve a math problem inluding editing and deleting steps

 Scenario: Solve a problem
    Given I navigate to "https://mathshare-qa.diagramcenter.org"
    When I click on element having xpath "//*[@id="problem-4"]/span[1]"
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

 Scenario: Edit and Delete Steps of the problem
    Given I navigate to "https://mathshare-qa.diagramcenter.org"
    When I click on element having xpath "//*[@id="problem-4"]/span[1]"
    Then element having id "workArea" should be present
    When I enter "my first step" into input field having id "mathAnnotation"
    And I click on element having xpath "//*[@id="notEqualBtn"]"
    And I click on element having xpath "//*[@id="control-buttons"]/button[1]"
    Then element having id "mathStep-2" should be present
    And I enter "step number 2" into input field having id "mathAnnotation"
    And I click on element having xpath "//*[@id="parallelBtn"]"
    And I click on element having xpath "//*[@id="control-buttons"]/button[2]"
    Then element having id "mathStep-3" should be present
    And I enter "step number 3" into input field having id "mathAnnotation"
    And I click on element having xpath "//*[@id="subscriptBtn"]"
    And I click on element having xpath "//*[@id="control-buttons"]/button[2]"
    Then element having id "mathStep-4" should be present
    And I enter "step number 4" into input field having id "mathAnnotation"
    And I click on element having xpath "//*[@id="piBtn"]"
    And I click on element having xpath "//*[@id="control-buttons"]/button[2]"
    Then element having id "mathStep-5" should be present
    And I click on element having xpath "//*[@id="deleteStepBtn-5"]"
    Then element having id "mathStep-5" should not be present
    And I click on element having id "editStepBtn-2"
    And I clear input field having id "mathAnnotation"
    And I enter "step number 1" into input field having id "mathAnnotation"
    And I click on element having xpath "//*[@id="control-buttons"]/button[2]"
    Then I wait 5 seconds for element having xpath "//*[@class="notification notification-success"]" to display

 Scenario: Close browser
    Then I close browser
