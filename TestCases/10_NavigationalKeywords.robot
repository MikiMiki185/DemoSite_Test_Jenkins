*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
NavigationTest
    open browser    https://www.google.com/      chrome
    maximize browser window
    sleep   2
    click button    xpath: //*[@id="W0wltc"]
    ${loc}=     get location
    log to console    ${loc}

    go to   https://www.bing.com/
    ${loc}=     get location
    log to console    ${loc}

    go back
    sleep   2