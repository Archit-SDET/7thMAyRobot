*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Start Test Case
    Open Browser    https://www.ebay.com    firefox
    Maximize Browser Window

Close Test Case
    Close Browser