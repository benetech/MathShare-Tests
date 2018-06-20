package org.benetech.mathshare.test;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		plugin = {
			 "pretty", "html:target/cucumberHtmlReport",
		     "html:target/cucumberHtmlReport",     //  for html result
			 "pretty:target/cucumber-json-report.json"   // for json result
		},
		features = "classpath:features",
		glue = {
			"info.seleniumcucumber.stepdefinitions",   // predefined step definitions package
			"org.benetech.mathshare.test.steps" // user step definitions package
	    }
)
public class RunCukeTest {
}
