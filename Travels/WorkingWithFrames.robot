*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Url}    https://www.w3schools.com/js/tryit.asp?filename=tryjs_myfirst
${Browser}    Chrome

*** Test Cases ***
TC to demonstrate CheckBox Frame Keywords in Robot Framework
    [Documentation]    TC to demonstrate Frame Operation Keywords in Robot Framework
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Sleep    3s

    Select Frame    //iframe[@name ='iframeResult']
    Current Frame Should Contain    My First JavaScript
    Current Frame Should Not Contain    button

    Unselect Frame

    Frame Should Contain    //iframe[@name ='iframeResult']    My First JavaScript

