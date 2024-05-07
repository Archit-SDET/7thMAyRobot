*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Url}    https://rahulshettyacademy.com/AutomationPractice/
${Browser}    Chrome

*** Test Cases ***
TC to demonstrate RadioButton Operation Keywords in Robot Framework
    [Documentation]    TC to demonstrate RadioButton Operation Keywords in Robot Framework
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Sleep    3s

    Page Should Contain Radio Button    //input[@value='radio1']
    Page Should Not Contain Radio Button    //input[@value='radio101']

    Radio Button Should Not Be Selected    radioButton
    Select Radio Button    radioButton    radio3

    Sleep    4s
    Radio Button Should Be Set To    radioButton    radio3    
    Close Browser
    
