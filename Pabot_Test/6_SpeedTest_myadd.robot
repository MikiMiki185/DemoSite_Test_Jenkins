*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  headlesschrome
${url}      https://demowebshop.tricentis.com/register
${password}     VDSWEGWgg12
*** Test Cases ***
1. Open browser
    open browser    ${url}      ${browser}
    maximize browser window

2. Insert personal details.

    click button    id:gender-male
    # input text      id:FirstName   Alojzy
    input text      xpath: /html//input[@id='FirstName']   Alojzy
    input text      id:LastName    Nowak
    # input text      id:Email       alojznowak@poczta.com
    input text      xpath://*[@id="Email"]      alojznowak@poczta.com

3. Create an insert password.
    input text      id:Password   ${password}
    input text      id:ConfirmPassword      ${password}
    sleep   5

4. Close browser.
    close browser