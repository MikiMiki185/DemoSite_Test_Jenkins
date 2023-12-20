*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Click
    open browser    https://testautomationpractice.blogspot.com/    chrome
    click button    //*[@id="HTML9"]/div[1]/button[1]
    sleep   3
    #alert should be present    I am an alert box!
    # Musimy to porpawić
    sleep   3
    handle alert   accept

    click button    //*[@id="HTML9"]/div[1]/button[2]
    #alert should be present     Press a button!
    # Musimy to porpawić
    handle alert   DISMISS
    wait until page contains    You pressed Cancel!
    sleep   2
