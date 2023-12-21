*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MouseActions
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window

    #right click/open context menu
    open context menu    xpath: //body[@class='wy-body-for-nav']/div[@class='wy-grid-for-nav']/section[@class='wy-nav-content-wrap']//div[@role='main']//span[.='right click me']
    sleep    5

    # double click action
    go to    https://testautomationpractice.blogspot.com/
    double click element    xpath: //div[@id='sidebar-right-1']/div[4]//button[.='Copy Text']
    sleep   3

    # drag and drop
    drag and drop    id: draggable      id:droppable
    sleep   3