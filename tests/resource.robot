*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
Library           axe_devtools_robot.AxeRobot
Library           reporting.py


*** Variables ***
${BROWSER}        Chrome
${DELAY}          1
${HOMEPAGE URL}      https://broken-workshop.dequelabs.com/
${TIMEOUT}         60s

*** Keywords ***
Open Homepage and analyze for a11y issues
    Set Selenium TIMEOUT    ${TIMEOUT}
    clear reports
    Open Browser    ${HOMEPAGE URL}    ${BROWSER}
    Maximize Browser Window
    audit_for_accessibility

Open the recipe card on the homepage and check for a11y issues
    Click element    css:#main-content > div.Recipes > div:nth-child(1) > div.Recipes__card-foot > button
    audit_for_accessibility
    create reports



