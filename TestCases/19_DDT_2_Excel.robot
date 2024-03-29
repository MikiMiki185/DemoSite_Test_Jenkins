*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resource.robot
Library     DataDriver  ../TestData/LoginData.xlsx  sheet_name=Arkusz1  # file=TestData/LoginData.xlsx

Suite Setup       Open my Browser
Suite Teardown    Close Browsers
Test Template     Invalid login

*** Test Cases ***
LoginTestwithExcel      using ${username} and ${password}

*** Keywords ***
Invalid login
    [Arguments]    ${username}      ${password}
    Input my username     ${username}
    Input my password     ${password}
    Click login buton
    Error message should be visible