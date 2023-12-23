
*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/login_resource.robot
Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    Invalid login

*** Test Cases ***              username                password
Right user empty password       admin@yourstore.com     ${EMPTY}
Right user wrong password       admin@yourstore.com     xyz
Wrong user right password       Wrong1                  admin
Wrong user empty password       Wrong2                  ${EMPTY}
Wrong user wrong password       Wrong3                  ccc

*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    Input my username     ${username}
    Input my password     ${password}
    Click login buton
    Error message should be visible