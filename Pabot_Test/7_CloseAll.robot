*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MyTestCase
    open browser    https://demo.automationtesting.in/Register.html     headlesschrome
    maximize browser window

    open browser    https://demo.automationtesting.in/Register.html     headlesschrome
    maximize browser window


