*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Url}    https://rahulshettyacademy.com/AutomationPractice/
${Browser}    Chrome

*** Test Cases ***
TC to demonstrate List Keywords in Robot Framework
    [Documentation]    TC to demonstrate List Operation Keywords in Robot Framework
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Sleep    3s

    Page Should Contain List    id: dropdown-class-example
    Page Should Not Contain List    id: dropdown-class-example11

    @{AllItems}    Get List Items    id: dropdown-class-example
    ${ListLabel}    Get Selected List Label    id: dropdown-class-example
    ${ListValue}    Get Selected List Value    id: dropdown-class-example

    List Selection Should Be    id: dropdown-class-example    Select

    Select From List By Value    id: dropdown-class-example    option3
    ${LLabel3}    Get Selected List Label    id: dropdown-class-example
    Sleep     2s

    Go To    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
    Select Frame    id:iframeResult
    Sleep    2s
    Select All From List    xpath://*[@id='cars']
    Sleep     2s
    @{ListLabels}    Get Selected List Labels    xpath://*[@id='cars']
    Sleep    2s
    Unselect From List By Value    xpath://*[@id='cars']    audi
    Sleep    2s
    Unselect From List By Index    xpath://*[@id='cars']    1
    Sleep    2s
    Unselect From List By Label    xpath://*[@id='cars']    Volvo
    Sleep    2s
    @{ListValues}    Get Selected List Values    xpath://*[@id='cars']
    Sleep    2s
    Unselect All From List    xpath://*[@id='cars']
    Sleep     2s
    List Should Have No Selections    xpath://*[@id='cars']

    Close Browser