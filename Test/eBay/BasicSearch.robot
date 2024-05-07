*** Settings ***
Documentation    Basic Search Functionality
Resource    ../../Resources/CommonFunctionality.robot
#Resource    ../../Resources/eBay_UserDefinedKeywords.robot
Resource    ../../Resources/PageObjects/HeaderPage.robot
Resource    ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start Test Case
Test Teardown    CommonFunctionality.Close Test Case


*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]    This test verifies basic search
    [Tags]    Functional

    HeaderPage.Input Search Text and click Search
    SearchResultsPage.Verify Search Results

Verify advanced search functionality
    [Documentation]    This test verified advanced search
    [Tags]    Functional

    HeaderPage.Click on Advanced Search Link
    

Verify search for robot on eBay
    [Documentation]    This test verifies robot is searched or not in searchMenu
    [Tags]    Functional

    HeaderPage.Input Search as Robot and click Search
    
Verify search for book on eBay
    [Documentation]    This test verifies book is searched or not in searchMenu
    [Tags]    Functional
    
    HeaderPage.Input Search as Book and click Search    book
    
    
    
