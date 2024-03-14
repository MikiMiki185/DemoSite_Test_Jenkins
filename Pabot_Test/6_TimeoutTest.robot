*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  headlesschrome
${url}      https://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    open browser    ${url}      ${browser}
    maximize browser window
    ${timeout}=     get selenium timeout
    log to console  ${timeout}
    wait until page contains    Register   #Your Personal Details jakaś część strony   # defaultowy czas to 5s
    set selenium timeout   10s
    ${timeout}=  get selenium timeout
    log to console  Time is ${timeout}
    # możemy też powyżej dodać komendę ustawiającą timeout
    # set selenium timeout    10s

    select radio button     Gender     F
    input text    name:FirstName   Mark
    input text    name:LastName   Nowak
    input text    name:Email   marknowak@email.com

    input text    name:Password     markpassword
    input text    name:ConfirmPassword      markpassword