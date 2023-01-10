*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
opening my browser
    open browser    https://magento.softwaretestingboard.com/    chrome
    maximize browser window
    set selenium speed    1


closing all browser
    close browser