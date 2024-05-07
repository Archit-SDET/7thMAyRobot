*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Url}    https://rahulshettyacademy.com/AutomationPractice/
${Browser}    Chrome
${Tab}    //legend[text() = 'Switch Tab Example']//following::a[1]

*** Test Cases ***
TC to demonstrate Browser Window Operation Keywords in Robot Framework
    [Documentation]    TC to demonstrate Browser Window Operation Keywords in Robot Framework

    Open Browser    ${Url}    ${Browser}    alias=ChromeRCV
    Maximize Browser Window
    Sleep    3s
    Wait Until Element Is Visible    ${Tab}
    Click Link    ${Tab}
    @{WindowHandles}    Get Window Handles
    Sleep     3s
    @{WindowIdentifier}    Get Window Identifiers
    Sleep    3s
    @{WindowNames}    Get Window Names
    Sleep    3s
    @{WindowTitles}    Get Window Titles
    Sleep     3s
    Set Window Position    100     200

    ${x}    ${y}     Get Window Position
    Log    ${x}
    Log    ${y}
    Sleep    4s

    Set Window Size    800    600
    
    ${width}    ${height}    Get Window Size    
    Log    ${width}
    Log    ${height}
    Sleep    4s

    Switch Window    ${WindowHandles}[1]
    Log    ${WindowHandles}[1]
    Sleep    4s

    Close Window
    Sleep     4s

    Switch Window    ${WindowHandles}[0]
    Close Window
