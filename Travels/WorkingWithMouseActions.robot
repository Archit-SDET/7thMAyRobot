*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Url}    https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_event_mouse_button
${Browser}    Chrome

*** Test Cases ***
TC to demonstrate Mouse Actions Operation Keywords in Robot Framework
    [Documentation]    TC to demonstrate Mouse Actions Operation Keywords in Robot Framework
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
#    Select Frame    id: iframeResult
#    Sleep    2s
#    Mouse Down    //div[@onmousedown='WhichButton(event)']
#    Sleep    2s
#    Mouse Up    //div[@onmousedown='WhichButton(event)']
#    Sleep    2s
#    Page Should Contain    You pressed button: 0
#
#    Mouse Down On Link    //a[@id='tryhome']
#    Sleep  2s
#
#    Go To    ${Url}
#    Mouse Over       //a[@title='Change Theme']
#    Sleep    4s
#
#    Mouse Out    //a[@title='Change Theme']
#    Sleep  2s

#    Go To    https://www.sugarcrm.com/au/?utm_source=sugarcrm.com&utm_medium=referral
#    #Select Frame    id: courses-iframe
#    Sleep     4s
#    Scroll Element Into View  //footer[@class='site-main-footer ']
#    Mouse Down On Image    //a[@class='footer-logo']//img[contains(@src, 'sugarcrm-logo')]
#    Sleep    4s

    Go To    https://demoqa.com/droppable
    Drag And Drop    //div[@id='draggable']    //div[@id='droppable']

    Open Context Menu    //a[text()= 'Accept']
    Sleep    2s

    Close Browser


