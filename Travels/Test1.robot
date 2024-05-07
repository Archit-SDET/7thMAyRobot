*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ValidateLoop

    @{Numbers}=    Create List        1    2    3    4    5
    FOR    ${Number}    IN   @{Numbers}
        Log To Console    ${Number}
        IF    '${Number}'=='4' 
            Log To Console    Enough
            BREAK
            END
        END
        