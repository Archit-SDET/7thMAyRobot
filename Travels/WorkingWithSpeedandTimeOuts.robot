*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Url}    https://www.sugarcrm.com/au/?utm_source=sugarcrm.com&utm_medium=referral
${Browser}    Chrome

*** Test Cases ***
TC to demonstrate Speed and TimeOuts Operation Keywords in Robot Framework
    [Documentation]    TC to demonstrate Speed and TimeOuts Actions Operation Keywords in Robot Framework
    ${SeleniumTimeout}=  Get Selenium Timeout
    ${SeleniumSpeed}=  Get Selenium Speed

    Set Selenium Timeout    4s
    Set Selenium Speed    1s

    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    
    ${SeleniumTimeout1}=  Get Selenium Timeout
    ${SeleniumSpeed1}=    Get Selenium Speed
    