Feature: Edit and Delete Steps
  As a user I should be able to edit and delete a problem step
  
Scenario: Edit and Delete Steps of the problem
    Given I navigate to "https://matheditor-qa.diagramcenter.org/"
    When I click on element having xpath "//*[@id="LeftNavigation"]/div[2]/div[5]/div[1]/span[1]"
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
    Then I wait 5 seconds for element having xpath "//*[@id="MainWorkWrapper"]/div[1]/span[1]/div[1]" to display 

    


