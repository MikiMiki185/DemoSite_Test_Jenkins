*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://demo.automationtesting.in/Register.html

*** Test Cases ***
1. Handling dropdowns.  #Obsługa list rozwijanych
    open browser    ${url}      ${browser}
    maximize browser window
    click button    xpath:/html/body/div/div[2]/div[1]/div[2]/div[2]/button[2]
    select from list by label   Skills  APIs
    sleep   3
    select from list by label    Skills    CSS
    sleep   3
    select from list by index   country     3
    sleep   3
    select from list by index   country     6
    sleep   3
    select from list by value   yearbox     1995
    sleep   3
    #Tu zagwostka czemu nie działa
    #select from list by value   yearbox     year