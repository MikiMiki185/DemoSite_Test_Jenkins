*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TableValidations
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    ${rows}=    get element count    xpath: //table[@name='BookTable']/tbody/tr             # dopisujemy /tbody/tr
    ${cols}=    get element count    xpath: //table[@name='BookTable']/tbody/tr[1]/th       # dopisujemy /tbody/tr[1]/th    bez [1] też działa prawidłow
    log to console  ${rows}
    log to console  ${cols}

    ${data}=    get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]        # td - od table data
    log to console  ${data}

    table column should contain    xpath: //*[@id="HTML1"]/div[1]/table     2       Author
    table row should contain       xpath: //*[@id="HTML1"]/div[1]/table     4       Learn JS
    table cell should contain      xpath: //*[@id="HTML1"]/div[1]/table     5   2   Mukesh
    table header should contain    xpath: //*[@id="HTML1"]/div[1]/table     BookName
