*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
Library           axe_devtools_robot.AxeRobot
Library           reporting.py


*** Variables ***
${BROWSER}        Chrome
${DELAY}          1
${HOMEPAGE URL}      https://axe-devtools-web-demo.vercel.app/
${TIMEOUT}         60s

*** Keywords ***
Open the Embel Furniture Store App site and check for a11y issues
    Set Selenium TIMEOUT    ${TIMEOUT}
    clear reports
    Open Browser    ${HOMEPAGE URL}    ${BROWSER}
    Maximize Browser Window
    audit_for_accessibility

Open the Shopping Cart and check for a11y issues
    Click element    css:#header > div > div.header-tools.d-flex.align-items-center > a.header-tools__item.header-tools__cart.js-open-aside
    audit_for_accessibility
    create reports



