*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      https://demoqa.com/automation-practice-form
#${radio_button}     Get WebElement  id://*[@id="genterWrapper"]/div[2]/div[3]/label

*** Test Cases ***
1. Open browser.
    open browser    ${url}      ${browser}
    maximize browser window
2. Input personal data.
    input text    id:firstName  Baltazar
    input text    id:lastName   Gembka
    input text    id:userEmail  baltazargembka@jakistammail.com
3. Select gender.
    click element   xpath://*[@id="genterWrapper"]/div[2]/div[2]/label
4. Selecet hobbies.
    click element   xpath://*[@id="hobbiesWrapper"]/div[2]/div[1]/label
    click element   xpath://*[@id="hobbiesWrapper"]/div[2]/div[2]/label
    click element   xpath://*[@id="hobbiesWrapper"]/div[2]/div[3]/label
5. Unselect hobbie.
    click element   xpath://*[@id="hobbiesWrapper"]/div[2]/div[3]/label
    sleep    2
