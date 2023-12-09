*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      https://demo.automationtesting.in/Register.html
#https://demoqa.com/automation-practice-form


*** Test Cases ***
1. Open browser.
    open browser    ${url}      ${browser}
    maximize browser window
    click button    xpath:/html/body/div/div[2]/div[1]/div[2]/div[2]/button[2]

    input text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input   Baltazar
    input text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[2]/input   Gembka
    input text    xpath://*[@id="basicBootstrapForm"]/div[2]/div/textarea   Warszawa 111/5
    input text    xpath://*[@id="eid"]/input    baltazargembka@jakistammail.com
    input text    xpath://*[@id="basicBootstrapForm"]/div[4]/div/input      510510510

#    select radio button     radiooptions  FeMale
    click element   xpath://*[@id="basicBootstrapForm"]/div[5]/div/label[2]/input

#    select checkbox     id:checkbox1
#    select checkbox     id:checkbox2
#    select checkbox     id:checkbox3
    click element   xpath://*[@id="checkbox2"]
    sleep    5