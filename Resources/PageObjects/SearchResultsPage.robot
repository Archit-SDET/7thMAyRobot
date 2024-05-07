*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***

Verify Search Results
    Click Element    //span[text()='Condition']
    Sleep    3s
    Click Element    //*[@class='fake-menu-button__menu']/ul/li[2]/a//*[text() = 'New']
    Element Should Contain    //a/div[text() ='New']    New