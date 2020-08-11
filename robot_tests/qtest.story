*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library          SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://www.google.com/
${BROWSER}      Chrome

*** Test Cases ***

Valid Search on Google
    Given Open Browser to Google page
    And Input Username
    When Click Serach
    Then Search Page Should Be Open
    [Teardown]                           Close Browser

Search invaid test alkjglajdbgl on google page
    Given Open Browser to Google page
    And Input random text
    When Click Serach
    Then Serach page should be not founded
    [Teardown]                                Close Browser

*** Keywords ***
Open Browser to Google page
    Open Browser       ${LOGIN URL}
    Title Should Be    Google

Input Username
    Input Text    xpath://*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input    Test

Click Serach
    Press Keys    xpath://*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input    ENTER
Search Page Should Be Open
    Title Should Be    Google

Input random text
    Input Text    xpath://*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input    dhjfajsh

Serach page should be not founded
    Title Should Be    Google