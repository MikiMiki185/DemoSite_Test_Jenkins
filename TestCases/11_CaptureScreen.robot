*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
LogicTC
    open browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      chrome
    sleep    3
    input text    name: username    Admin
    input password    name: password      admin123
    capture element screenshot    xpath: /html/body/div/div[1]/div/div[1]/div/div[1]    Logo_1.png  # lub D:/RobotFramework2023_December/1/logo.png
    capture page screenshot    LogoTC_1.png   # lub D:/RobotFramework2023_December/1/LogoTC.png
    click button   xpath: /html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    sleep   5
    capture page screenshot    LogoTC_2.png
    sleep   5