*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}          https://opensource-demo.orangehrmlive.com
${browser}      chrome
${login}        Admin
${password}     admin123

*** Test Cases ***
TC1
    ${PageTitle}=   Lanuch browser      ${url}      ${browser}
    log to console    ${PageTitle}
    log     ${PageTitle}
    sleep    2
    Login to sytem
    sleep    2
    Create screenshot page
    sleep    3
