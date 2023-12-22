*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ScrollingTest
    open browser   https://testautomationpractice.blogspot.com/   chrome
    maximize browser window
    ${allelements}=     get element count    xpath://p
    log to console    ${allelements}

    @{LinkItems}    create list

    FOR     ${i}    IN RANGE     1   ${allelements} + 1
        ${linkText}=    GET TEXT    xpath:(//a)[${i}]
        log to console     ${i} ${linkText}
    END