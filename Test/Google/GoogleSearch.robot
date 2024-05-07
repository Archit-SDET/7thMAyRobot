*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
This is sample test case
    [documentation]  Google test
    [tags]  regression

    OpenBrowser     https://www.google.com/    chrome
    Maximize Browser Window
    CloseBrowser


*** keywords ***

