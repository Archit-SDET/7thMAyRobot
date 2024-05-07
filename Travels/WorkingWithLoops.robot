*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Url}    https://www.google.com/
${Browser}    Chrome

*** Test Cases ***
TC to demonstrate LOOP Keywords in Robot Framework
    [Documentation]    TC to demonstrate LOOP Keywords in Robot Framework
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Sleep    3s
        
    Input Text    id: APjFqb    RCV Academy
    Press Keys    //div[@class='FPdoLc lJ9FBc']//input[@class='gNO89b']    RETURN
    @{WebElementsOnPage}=    Get Webelements    //a[@class='nPDzT T3FoJb']

    FOR    ${element}    IN    @{WebElementsOnPage}
       ${Text}    Get Text       ${element}

    END

    Go To    https://rahulshettyacademy.com/AutomationPractice/
    Wait Until Element Is Visible    //input[@id='autocomplete']    4s
    Input Text    //input[@id='autocomplete']    IND
    Wait Until Element Is Visible    //li[@class='ui-menu-item']
    @{Countries}=    Get Webelements    //li[@class='ui-menu-item']
    
    FOR    ${country}    IN    @{Countries} 
    ${countryText}    Get Text    ${country}
    Log       ${countryText}
    END
    Close Browser