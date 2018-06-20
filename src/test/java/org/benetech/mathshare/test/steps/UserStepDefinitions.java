package org.benetech.mathshare.test.steps;
import com.deque.axe.AXE;
import cucumber.api.java.en.Then;
import org.benetch.mathshare.test.AxeResults;
import org.json.JSONObject;
import org.openqa.selenium.WebDriver;

import org.benetech.mathshare.test.env.DriverUtil;
import info.seleniumcucumber.methods.BaseTest;

import java.net.MalformedURLException;
import java.net.URL;

import static org.junit.Assert.fail;


public class UserStepDefinitions implements BaseTest {

    private static final String AXE_URL = "https://cdnjs.cloudflare.com/ajax/libs/axe-core/2.6.1/axe.js";

	private WebDriver driver = DriverUtil.getDefaultDriver();
	
	@Then("^Check Accessibility: max (\\d+) violations$")
	public void checkAccessibility(int maxViolations) throws MalformedURLException {
        AXE.inject(driver, new URL(AXE_URL));

        AXE.Builder builder = new AXE.Builder(driver, new URL(AXE_URL));
		JSONObject results = builder.analyze();

        AxeResults axeResults = new AxeResults(results);
        axeResults.print(System.out);

        if (axeResults.countViolations() > maxViolations) {
            fail(String.format("Too many accessibility violations: %d. The maximum is: %d.",
                    axeResults.countViolations(), maxViolations));
        }
	}
}
