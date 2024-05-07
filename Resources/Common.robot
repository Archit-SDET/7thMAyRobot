*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Start test case
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Sleep    1s

Close test case
    Close Browser