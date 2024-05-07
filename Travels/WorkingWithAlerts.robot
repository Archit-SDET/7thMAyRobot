*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Url}    https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt
${Browser}    Chrome

*** Test Cases ***
TC to demonstrate RadioButton Operation Keywords in Robot Framework
    [Documentation]    TC to demonstrate RadioButton Operation Keywords in Robot Framework
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Sleep    3s
    Select Frame    id: iframeResult
    Click Element   xpath: /html/body/button
    Sleep    5s
    Input Text Into Alert    Archit    Accept    5s

#    Click Element    xpath: //button[text() ='Try it']
#    Sleep    2s
#    Handle Alert    Accept    timeout=5s
#
#    Go To    ${Url}
#    Maximize Browser Window
#    Select Frame    id: iframeResult
#    Click Element    xpath: //button[text() ='Try it']
#    Sleep    2s
#    ${message1}    Handle Alert    Accept    2s
#
#    Go To    https://www.w3schools.com/js/tryit.asp?filename=tryjs_confirm
#    Select Frame    id: iframeResult
#    Click Element    xpath: //button[text() ='Try it']
#    Sleep    2s
#    ${message2}    Handle Alert    Dismiss    2s
#
#    Go To    https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt
#    Select Frame    id: iframeResult
#    Click Element    xpath: //button[text() ='Try it']
#    Sleep    2s
#    Alert Should Be Present    Please enter your name:    Accept
#
#
#    Go To    https://www.w3schools.com/js/tryit.asp?filename=tryjs_nav_cookieenabled
#    Select Frame    id: iframeResult
#    Alert Should Not Be Present    Accept    2s

    Close Browser