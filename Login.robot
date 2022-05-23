*** Settings ***
Library      Selenium2Library
*** Variables ***
    ${Url}             https://www.google.com/       
    ${Browser}         chrome
    ${Wait}            10 seconds
    ${Search_Button}   xpath=//body/div[@id='app']/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/label[1]/div[1]/div[2]
    ${Down_Arrow}      \\40
*** Test Cases ***
Login Test Negative
    [Tags]  LoginFeature
    Open Browser    ${Url}   ${Browser}
    maximize Browser window
    ${Wait}
    Wait Until Element Is Visible  ${Search_Button}
    Press key  ${Down_Arrow}    
    












