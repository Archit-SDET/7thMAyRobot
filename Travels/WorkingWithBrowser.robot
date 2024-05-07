*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://www.google.com
${browser}    chrome

*** Test Cases ***
TC to demonstrate Browser Operation Keywords in Robot Framework
    [Documentation]    TC to demonstrate Browser Operation Keywords in Robot Framework

    Open Browser    ${url}    ${browser}    alias=ChromeRCV
    Open Browser    about:blank    ff    alias=RCVff
    Maximize Browser Window
    @{aliases}    Get Browser Aliases
    Log    ${aliases}[0]
    @{browser_ID}    Get Browser Ids
    Log    ${browser_ID}[1]
    Switch Browser    1
    Input Text    //textarea[@class='gLFyf']    RCVacademy
    Sleep     4s
    Switch Browser    ${browser_ID}[1]
    Go To    http://salesforce.com
    Close All Browsers

*** Keywords ***
