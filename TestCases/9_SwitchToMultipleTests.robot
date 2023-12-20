*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***

SwitchToMultipleTests
    open browser    https://www.google.com/      chrome
    maximize browser window
    sleep   2
    click button    xpath: //*[@id="W0wltc"]
    sleep   2
    open browser    https://www.bing.com      chrome
    maximize browser window
    sleep   2

    switch browser    1
    ${title}=   get title
    log to console    ${title}

    switch browser  2
    ${title2}=   get title
    log to console    ${title2}
