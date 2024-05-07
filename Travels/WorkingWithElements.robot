*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Url}    http://google.com
${Browser}    Chrome
${Element}    //body/div[1]/div[3]/form[1]/div[1]/div[1]/div[4]/center[1]/input[1]
${GoogleLucky}    //body/div[1]/div[3]/form[1]/div[1]/div[1]/div[4]/center[1]/input[2]

*** Test Cases ***
TC to demonstrate Browser Element Operation Keywords in Robot Framework
    [Documentation]    TC to demonstrate Browser Element Operation Keywords in Robot Framework

    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Sleep    3s
    Get Element Attribute    ${Element}   value
    ${ElementCount}    Get Element Count    ${Element}
    Log    ${ElementCount}
    ${width}    ${height}    Get Element Size    ${Element}
    Get WebElement    ${Element}
    @{webelements}    Get Webelements    ${Element}
    Capture Element Screenshot    ${GoogleLucky}
    Assign Id To Element    //body/div[1]/div[3]/form[1]/div[1]/div[1]/div[4]/center[1]/input[2]    GoogleFeelingLucky
    Page Should Contain Element    GoogleFeelingLucky

    #Element Should Be Focused    ${GoogleLucky}
    Element Should Be Visible    ${GoogleLucky}

    Input Text    //textarea[@class ='gLFyf']    RCVAcademy
    Clear Element Text    //textarea[@class ='gLFyf']

    Cover Element    ${GoogleLucky}

    Element Attribute Value Should Be    ${Element}    value    Google Search
    Element Should Be Enabled    ${Element}

    Element Should Not Be Visible    //textarea[@class = 'glfyf123']

    Element Should Contain    //a[@href = 'https://google.com/search/howsearchworks/?fg=1']    How Search
    Element Should Not Contain        //a[@href = 'https://google.com/search/howsearchworks/?fg=1']    Google Search

    Element Text Should Be    //a[@href = 'https://google.com/search/howsearchworks/?fg=1']    How Search works
    Element Text Should Not Be    //a[@href = 'https://google.com/search/howsearchworks/?fg=1']    How Search

    Sleep     4s
    Double Click Element    //a[text() = 'About']
    Click Element At Coordinates    //a[@href = 'products/']    15    10
    Close Browser    


    
    