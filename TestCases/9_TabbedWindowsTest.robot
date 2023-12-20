*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
1. TabbedWindowsTests
    open browser    https://demo.automationtesting.in/Windows.html      chrome
    maximize browser window
    click button    xpath: /html/body/div[3]/div[2]/div[1]/div[2]/div[2]/button[2]
    sleep   5
    click button    xpath: //div[@id='Tabbed']//button[@class='btn btn-info']
    sleep   3

    #Select new window
    switch window    title=Selenium
    sleep   2
    click element    xpath: /html/body[@class='td-home']/div[@class='container-fluid td-default td-outer']/main[@role='main']/section[2]//a[@href='/documentation/webdriver/']
    sleep   2
