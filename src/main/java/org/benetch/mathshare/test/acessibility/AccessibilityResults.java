package org.benetch.mathshare.test.acessibility;

import java.io.PrintStream;

public interface AccessibilityResults {
    int countViolations();

    boolean hasViolations();

    void print(PrintStream out);
}
