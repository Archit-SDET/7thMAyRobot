*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Url}    https://www.saucedemo.com/
${Browser}    Chrome
${UserName}    standard_user
${UserPassword}    secret_sauce

*** Test Cases ***
TC to demonstrate Speed and TimeOuts Operation Keywords in Robot Framework
    [Documentation]    TC to demonstrate Speed and TimeOuts Actions Operation Keywords in Robot Framework
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    #Handle Alert    Accept
    Input Text    //input[@placeholder='Username']    ${UserName}
    Input Text    //input[@placeholder='Password']    ${UserPassword}
    Click Element    id: login-button
    ${ElementOnPage}    Get Element Count    //div[@data-test='inventory-item']


    Run Keyword If    ${ElementOnPage} == 10    Test Keyword 1
    ...    ELSE IF    ${ElementOnPage} < 10 and ${ElementOnPage} > 6    Test Keyword 2
    ...    ELSE    Test Keyword 3

*** Keywords ***
Test Keyword 1
    Log To Console    ExecutedKeyword1-Found items are expected

Test Keyword 2
    Log To Console    ExecutedKeyword2-Found items are less

Test Keyword 3
    Log To Console    ExecutedKeyword3-Exception
    Close Browser
