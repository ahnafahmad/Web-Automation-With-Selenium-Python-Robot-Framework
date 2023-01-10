*** Settings ***
Library    SeleniumLibrary
Variables    ../Selectors/ProductSelection.py

*** Keywords ***
Add to Cart Products 1
    click element    ${selectSize1}
    click element    ${selectColor1}
    click element    ${addToCart1}

Add to Cart Products 2
    click element   ${selectSize2}
    click element    ${selectColor2}
    click element    ${addToCart2}

Add to Cart Products 3
    click element    ${selectSize3}
    click element    ${selectColor3}
    click element    ${addToCart3}
    sleep    3


See Shoping Cart
    wait until element is visible    link:shopping cart
    click link    link:shopping cart
    sleep    2
    page should contain    Summary
    wait until element is visible    ${proceedToCheckout}
    click button    ${proceedToCheckout}
    sleep    2


Checkout Asserion
    page should contain    Shipping Address

