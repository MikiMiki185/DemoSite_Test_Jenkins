*** Settings ***


*** Test Cases ***
TC1 User RegistrationTest
    [Tags]  regression
    log to console    This is user reg test
    log to console    User registration test is over
TC2 LoginTest
    [Tags]  sanity
    log to console    This is Login test
    log to console    Login test is over
TC3 Change user settings
    [Tags]  regression
    log to console    This is changing user settings test
    log to console    Change user settings test is over
TC4 Logout Test
    [Tags]  sanity
    log to console    This is Logout test
    log to console    Logout test is over
