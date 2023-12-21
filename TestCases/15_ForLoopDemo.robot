*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Forloop1
    FOR    ${i}    IN RANGE    1   11
        log to console    ${i}
    END

Forloop2
    FOR    ${i}    IN     1  3  5  7  9
        log to console    ${i}
    END

Forloop3withList
    @{items}    create list     1  2  3  4  5
    FOR    ${i}   IN    @{items}
        log to console  ${i}
    END

Forloop4withList
    @{items}    create list     John   David  Smith  Scott
    FOR    ${i}   IN    @{items}
        log to console  ${i}
    END

Forloop5withList
    @{items}    create list     1  2  3  4  5
    FOR    ${i}   IN    @{items}
        log to console  ${i}
        exit for loop if    ${i}==3
    END
