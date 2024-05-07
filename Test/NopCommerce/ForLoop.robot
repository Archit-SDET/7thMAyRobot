*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
#For Loop
#    FOR    ${i}    IN RANGE    0    11
#    Log To Console    ${i}
#    END
    
#For Loop2
#    @{list}    Create List    1  2  3  4  5
#    FOR    ${i}    IN    @{list}
#        Log To Console    ${i}
#    END

#For Loop3
#    @{list}    Create List    Archit  Ankit  Sachin  Nishant
#    FOR    ${name}    IN    @{list}
#        Log To Console    ${name}
#        END

For Loop4
    @{Items}    Create List     1  2  3  4  5
    FOR    ${Item}    IN    @{Items}
        Log To Console    ${Item}
        Exit For Loop If    ${Item}==3
        END

*** Keywords ***
