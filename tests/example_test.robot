*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Axe Analyze
    Open the Embel Furniture Store App site and check for a11y issues
    Open the Shopping Cart and check for a11y issues
    [Teardown]    Close Browser

