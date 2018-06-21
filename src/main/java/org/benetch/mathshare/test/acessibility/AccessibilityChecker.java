package org.benetch.mathshare.test.acessibility;

import org.openqa.selenium.WebDriver;

public interface AccessibilityChecker {

    AccessibilityResults performCheck(WebDriver webDriver);
}
