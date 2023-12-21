*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
    # Scrolling page till it reach a pixel number
    # execute javascript    window.scroll(0, 2500)

    # Scrolling page till find element on page
    # scroll element into view    xpath: /html/body/div[1]/div[2]/div[2]/div[2]/div[2]/div[2]/table[1]/tbody/tr[109]/td[1]/img

    # Another metod to scroll
    execute javascript      window.scrollTo(0,-document.body.scrollHeight)
    sleep   3
    execute javascript      window.scrollTo(0,document.body.scrollHeight)
    sleep   3
    execute javascript      window.scrollTo(0,-document.body.scrollHeight)
    sleep   5
    close browser