*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${Url}    https://demo.nopcommerce.com/login
${Browser}    Chrome
${Title}    nopCommerce demo store. Login
#${UserID}    xpath: //input[@id='Email']

*** Test Cases ***
Testing InputBox
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Title Should Be        ${Title}

    Sleep    2s
    ${UserID}    Set Variable    id:Email
    Click Element      ${UserID}
    Element Should Be Enabled   ${UserID}
    Element Should Be Visible    ${UserID}    Username is visible
    ${Link}=    Get Element Count    xpath: //a
    Log To Console    ${Link}

    @{Links}    Create List
    FOR    ${i}    IN RANGE  1  ${Link}+1
    ${LinkText}    Get Text    xpath: (//a)[${i}]
   
    Log To Console    ${LinkText}
    END


    

    
    
*** Keywords ***
