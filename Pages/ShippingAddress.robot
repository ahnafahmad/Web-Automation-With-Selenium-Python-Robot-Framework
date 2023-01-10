*** Settings ***
Library    SeleniumLibrary
Variables    ../Selectors/ShippingAddress.py


*** Keywords ***
Input Street Address
    [Arguments]    ${streetAddress}
    input text    ${street}     ${streetAddress}

Input City Address
    [Arguments]    ${cityAddress}
    input text    ${city}       ${cityAddress}

Select State Address
    select from list by label       ${state}    West Bengal

Input Zip Code Address
    [Arguments]    ${zipCodeAddress}
    input text    ${zipCode}        ${zipCodeAddress}

Select Country Address
    select from list by label       ${country}    India

Input Phone Number
    [Arguments]    ${phoneNumber}
    input text    ${enterPhoneNumber}       ${phoneNumber}

Go To Next Button
    click element    ${clickNextButton}
    sleep    2

Shipping Assertion
    page should contain    Payment Method

Placing Order
    click element    ${clickPlaceOrderButton}
    sleep    3
    page should contain    Thank you for your purchase!

