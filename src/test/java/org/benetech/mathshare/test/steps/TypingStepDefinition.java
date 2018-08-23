package org.benetech.mathshare.test.steps;

import cucumber.api.java.en.Then;
import env.DriverUtil;
import info.seleniumcucumber.methods.BaseTest;
import org.benetch.mathshare.test.acessibility.AccessibilityChecker;
import org.benetch.mathshare.test.acessibility.AccessibilityResults;
import org.benetch.mathshare.test.acessibility.axe.Axe2AccessibilityChecker;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import static org.junit.Assert.fail;


public class TypingStepDefinition implements BaseTest {

    private WebDriver driver = DriverUtil.getDefaultDriver();

    @Then("^I type \"([^\"]*)\" into element having id \"([^\"]*)\"$")
    public void checkAccessibility(String value, String elementId) {
    	WebElement root = driver.findElement(By.id(elementId));
    	root.click();
        WebElement element = driver.findElement(By.className("ML__keystrokecaption"));
        //element.sendKeys(value);
        //WebElement textArea = element.findElement(By.tagName("textarea"));

        JavascriptExecutor jsExecutor = (JavascriptExecutor) driver;
        jsExecutor.executeScript("var e = new Event('keydown'); e.key='b'; e.keyCode=e.key.charCodeAt(0); e.which=e.keyCode; e.bubbles=true; e.ctrlKey=true; arguments[0].dispatchEvent(e);", root);
        
    }
}
