*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Testing Frames
    open browser    https://ui.vision/demo/webtest/frames/   chrome

    #Frame1
    select frame    xpath: /html/frameset/frame[1]
    sleep    1
    input text    name: mytext1     Text111
    sleep   1
    unselect frame

    #Frame2
    select frame    xpath: /html/frameset/frameset/frame[1]
    sleep    1
    input text    name: mytext2     Text111
    sleep   1
    unselect frame

    #Frame4
    select frame    xpath: /html/frameset/frameset/frame[3]
    sleep    1
    input text    name: mytext4      MYTest
    unselect frame

    #Frame3
    select frame    xpath: /html/frameset/frameset/frame[2]
    sleep    1
    input text    xpath: //*[@id="id3"]/div/input      MYTest
    unselect frame

    sleep   1
    select frame  xpath: /html/body/center/iframe
    sleep   1
    click element  xpath: //*[@id="mG61Hd"]/div[2]/div[1]/div[2]/div[1]/div/div/div[2]/div[1]/div/span/div/div[1]/label/div/div[2]/div/span
    sleep   1