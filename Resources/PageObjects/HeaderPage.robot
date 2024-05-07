*** Settings ***
Library    SeleniumLibrary
Variables    ./WebElement.py

*** Variables ***
${search_Text}    mobile  #scalar
@{search_ListText}  mobile  robot  fan  #List
&{search_DictionaryText}  abc=books    bcd=travel  #Dictionary

*** Keywords ***
Input Search Text and click Search
    Input Text  ${HomePageSearchText}  ${search_Text}
    Press Keys  ${HomePageSearchButton}   [return]

Click on Advanced Search Link
    Click Element    xpath: //a[@title = 'Advanced Search']
    
Input Search as Robot and click Search
   #Input Text //input[@type='text']    ${search_ListText}[1]
    Input Text  xpath: //input[@type='text']    ${search_DictionaryText.bcd}
    Press Keys  xpath: //input[@type='submit']     [return]
    
Input Search as Book and click Search
    
    [Arguments]    ${search_Keyword}
    Input Text  xpath: //input[@type='text']    ${search_Keyword}
    Press Keys  xpath: //input[@type='submit']     [return]
    