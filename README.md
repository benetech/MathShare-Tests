Benetech MathShare Automated Test Suite
=================

The suite is built using `selenium-cucumber : Automation Testing Using Java`

`selenium-cucumber` is a behavior driven development (BDD) approach to write automation test script to test Web.
It enables you to write and execute automated acceptance/unit tests.
It is cross-platform, open source and free.
Automate your test cases with minimal coding.
[More Details](http://seleniumcucumber.info/)

Documentation
-------------
* [Installation](https://github.com/selenium-cucumber/selenium-cucumber-java/blob/master/doc/installation.md)
* [Predefined steps](https://github.com/selenium-cucumber/selenium-cucumber-java/blob/master/doc/canned_steps.md)

Accessibility
-------------

A step for checking the accessibility of the current page has been added. In order to use, add an appropriate 
`Then` step:

```code 
Then Check Accessibility: max X violations
```

Where **X** is the maximum number of violations that will not fail the build.

Currently [axe 2](https://axe-core.org/) is being used as the accessibility check engine.

Running
-------

* Make sure webdriver.properties contains correct values (TODO improve)
* Run:

```bash
mvn clean test
```
