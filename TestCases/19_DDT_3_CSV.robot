*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resource.robot
Library     DataDriver  file=TestData/LoginDataCSV.csv  encoding=utf-8

Suite Setup       Open my Browser
Suite Teardown    Close Browsers
Test Template     Invalid login

*** Test Cases ***
LoginTestwithCsv    using ${username}    ${password}

*** Keywords ***
Invalid login
    [Arguments]    ${username}      ${password}
    Input my username     ${username}
    Input my password     ${password}
    Click login buton
    Error message should be visible