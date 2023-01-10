*** Settings ***
Library    SeleniumLibrary
Variables    ../Selectors/Search.py

*** Keywords ***
Searching Products
    [Arguments]     ${product}
    input text    ${searchBox}      ${product}
    press keys    ${searchBox}       ENTER
    sleep    2
    page should contain    jacket
    sleep    1

Sorting the Product
    [Arguments]    ${sortingByPrice}
    select from list by label    ${resultSorting}       ${sortingByPrice}
    press keys      xpath=//body    SPACE
    sleep    2

Taking Screenshots of 1st Three Products
    mouse out    class:product-item-info
    mouse out    class:product-item-info
    capture page screenshot    E:\\SDET\\SQA with Python\\Assignments\\Assignment-2\\Web_Automation_Python_Robot_Framwork\\Screenshot\\Products-Image.png
