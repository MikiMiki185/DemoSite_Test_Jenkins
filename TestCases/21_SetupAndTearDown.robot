*** Settings ***

Suite Setup    log to console       Opening browser
Suite Teardown    log to console    Closing browser

Test Setup    log to console       Logging to application
Test Teardown    log to console    Logout from application

*** Test Cases ***
TC1 Prepaid Recharge
    log to console    This prepaid recharge test
TC2 Postpaid Recharge
    log to console    This prepaid recharge test
TC3 search
    log to console    This is search test
TC4 Advanced Search
    log to console    This is advanced search case