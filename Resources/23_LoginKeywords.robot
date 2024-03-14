*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/23_Locators.py

*** Keywords ***

Open my browser
    [Arguments]     ${Siteurl}  ${Browser}
    Open browser    ${Siteurl}   ${Browser}
    maximize browser window

Enter Username
    [Arguments]     ${Username}
    input text    ${txt_loginUserName}  ${Username}

Enter Password
    [Arguments]     ${Password}
    input text    ${txt_passwordName}    ${Password}

Click SignIn
    click button    ${btn_signIn}

Verfiy Succesful Login
    element should be visible    xpath: /html/body/div/div[1]/div[1]/header/div[1]/div[1]/span/h6

Click MyInfo
    click element  ${btn_MyInfo}
Clear Text Filed
    [Arguments]    ${locator}
    Clear Element Text    ${txt_FirstName}
    Clear Element Text    ${txt_MiddleName}
    Clear Element Text    ${txt_LastName}
    Clear Element Text    ${txt_EmployID}
Enter Informations
    [Arguments]     ${FirstName}    ${MiddleName}    ${LastName}      ${EmployID}
    input text      ${txt_FirstName}   ${FirstName}
    input text      ${txt_MiddleName}   ${MiddleName}
    input text      ${txt_LastName}     ${LastName}
    input text      ${txt_EmployID}     ${EmployID}

Close my browser
    close all browsers