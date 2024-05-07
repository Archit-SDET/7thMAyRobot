*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Url}    https://rahulshettyacademy.com/AutomationPractice/
${Browser}    Chrome

*** Test Cases ***
TC to demonstrate CheckBox Operation Keywords in Robot Framework
    [Documentation]    TC to demonstrate CheckBox Operation Keywords in Robot Framework
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Sleep    3s

    Page Should Contain Checkbox    id:checkBoxOption1
    Page Should Not Contain Checkbox    id:checkBoxOption101

    Select Checkbox    id:checkBoxOption1
    Checkbox Should Be Selected    id:checkBoxOption1
    Capture Page Screenshot
    Sleep  4s

    Checkbox Should Not Be Selected    id:checkBoxOption2

    Unselect Checkbox   id:checkBoxOption1
    Checkbox Should Not Be Selected    id:checkBoxOption1
    Capture Page Screenshot
    Sleep    4s
    Close Browser