*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}          https://opensource-demo.orangehrmlive.com
${browser}      chrome
${login}        Admin
${password}     admin123

*** Test Cases ***
TC1
    ${PageTitle}=   Lanuch browser      ${url}      ${browser}
    log to console    ${PageTitle}
    sleep    2
    Login to sytem
    sleep    2
    Create screenshot page
    sleep    3
*** Keywords ***
Lanuch browser
    [Arguments]     ${appurl}       ${appbrowser}
    open browser    ${appurl}       ${appbrowser}
    maximize browser window
    ${title}=   get title
    [Return]    ${title}

Login to sytem
    input text        name: username      ${login}
    input password    name: password      ${password}
    click button    xpath: /html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

Create screenshot page
    capture page screenshot    Keywords.png