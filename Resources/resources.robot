*** Settings ***
Library    SeleniumLibrary

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