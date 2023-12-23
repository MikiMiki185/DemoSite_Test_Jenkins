*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}=   https://admin-demo.nopcommerce.com/
${BROWSER}=     chrome

*** Keywords ***
Open my Browser
    open browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window

Close Browsers
    close all browsers

Open Login Page
    Go to   ${LOGIN URL}

Input my username
    [Arguments]    ${usernames}
    input text        id:Email          ${usernames}

Input my password
    [Arguments]    ${password}
    input password    id:Password       ${password}

Click login buton
    click element    xpath: /html/body/div[@class='master-wrapper-page']/div[@class='master-wrapper-content']/div[@class='master-column-wrapper']//form[@action='/login?returnurl=%2Fadmin%2F']//button[@type='submit']

Click logout button
    click link  Logout

Error message should be visible
    page should contain    Login was unsuccessful.

Dashboard page should be visible
    page should contain    Dashboard
