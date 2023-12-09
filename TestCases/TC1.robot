*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    loginToApplication
    close browser


*** Keywords ***
loginToApplication
    click link  xpath:/html/body/div[@class='master-wrapper-page']//div[@class='header-links']/ul//a[@href='/login?returnUrl=%2F']
    input text    id:Email  randomadress3242@gmail.com
    input text    id:Password   Nananana
    click button    xpath:/html/body/div[@class='master-wrapper-page']/div[@class='master-wrapper-content']/div[@class='master-column-wrapper']//form[@action='/login?returnurl=%2F']//button[@type='submit']
