*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Common.robot
#Library    DataDriver  ../TestData/TestData.csv
Library    DataDriver    ../TestData/ExcelData.xlsx

Suite Setup    Common.Start test case
Suite Teardown    Common.Close test case
Test Template    Invalid Login Scenarios

*** Variables ***
${userid}       id: user-name
${userpass}   xpath: //input[@id='password']
${loginButton}    id: login-button
${textError}    Class: error-message-container error

*** Test Cases ***
Verify Login Fails with Invalid Creds    ${username}    ${password}    ${error-msg}

*** Keywords ***
Invalid Login Scenarios
    [Arguments]    ${username}    ${password}    ${error-msg}
    Input Text    ${userid}       ${username}        
    Input Text    ${userpass}     ${password}
    Click Button  ${loginButton}
    Sleep    2s/
    Element Should Contain    //body/div[@id='root']/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[3]/h3[1]    ${error-msg}
