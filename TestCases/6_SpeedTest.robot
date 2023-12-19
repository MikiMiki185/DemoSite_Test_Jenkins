*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    set selenium implicit wait    5
    ${spead}=   get selenium speed      # ustalamy naszą zmieną i przypisujemy jej prędkość wykonywania poszczególnych kroków
    log to console  ${spead}            # wyświetlenie zmiennej w konsoli
    open browser    ${url}      ${browser}
    maximize browser window

    # set selenium speed    0.5     # ustawia opóźnienia między każdym wykonywanym krokiem

    select radio button     Gender     F
    input text    name:FirstName   Mark
    input text    name:LastName   Nowak
    input text    name:Email   marknowak@email.com

    input text    name:Password     markpassword
    input text    name:ConfirmPassword      markpassword
    ${spead}=   get selenium speed      # ponowne przypisanie czasu do zmiennej
    log to console  ${spead}            # ponowne wypisanie na konsoli

