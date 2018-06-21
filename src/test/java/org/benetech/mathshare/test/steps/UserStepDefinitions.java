package org.benetech.mathshare.test.steps;
import cucumber.api.java.en.Then;
import org.benetch.mathshare.test.acessibility.AccessibilityChecker;
import org.benetch.mathshare.test.acessibility.AccessibilityResults;
import org.benetch.mathshare.test.acessibility.axe.Axe2AccessibilityChecker;
import org.openqa.selenium.WebDriver;

import env.DriverUtil;
import info.seleniumcucumber.methods.BaseTest;

import static org.junit.Assert.fail;


public class UserStepDefinitions implements BaseTest {

	private WebDriver driver = DriverUtil.getDefaultDriver();
	
	@Then("^Check Accessibility: max (\\d+) violations$")
	public void checkAccessibility(int maxViolations) {
        AccessibilityChecker accessibilityChecker = new Axe2AccessibilityChecker();
        AccessibilityResults results = accessibilityChecker.performCheck(driver);

        results.print(System.out);

        if (results.countViolations() > maxViolations) {
            fail(String.format("Too many accessibility violations: %d. The maximum is: %d.",
                    results.countViolations(), maxViolations));
        }
	}
}
