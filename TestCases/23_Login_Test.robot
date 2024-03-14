*** Settings ***

Library    SeleniumLibrary
Resource   ../Resources/23_LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${Siteurl}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Username}     Admin
${Password}     admin123


*** Test Cases ***
LoginTest
    Open my browser     ${Siteurl}    ${Browser}
    sleep   2 seconds
    Enter Username      ${Username}
    Enter Password      ${Password}
    Click SignIn
    sleep   3 seconds
    Verfiy Succesful Login
    Click MyInfo
    sleep   3 seconds
    Enter Informations  Adam    Piotr   Błaszczak     5432
    sleep   10 seconds

    # Close my browser