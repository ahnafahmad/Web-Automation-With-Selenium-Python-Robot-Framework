*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary     WITH NAME    faker
Resource    ../Setup/environment.robot
Resource    ../Pages/doLogin.robot
Resource    ../Pages/doSearch.robot
Resource    ../Pages/ProductSelection.robot
Resource    ../Pages/ShippingAddress.robot
Suite Setup    opening my browser
Suite Teardown    closing all browser

*** Test Cases ***
Login to the System
    ${email}=   get variable value    ${email}
    ${password}=    get variable value    ${password}
    Login with Valid Credentials    ${email}    ${password}
    Assertion

Search Products
    ${theProduct}=      set variable    Jacket
    ${price}        set variable    Price
    Searching Products    ${theProduct}
    sorting the product    ${price}

ScreenShots
    Taking Screenshots of 1st Three Products

Add Products
    Add to Cart Products 1
    Add to Cart Products 2
    Add to Cart Products 3
    See Shoping Cart
    Checkout Asserion
    sleep    3

Add Shipping Address
    ${fakerStreet}=     faker.Street Address
    ${fakerCity}=       faker.City
    ${fakerZipCode}=    faker.Zipcode
    ${fakerPhoneNumber}=    faker.Phone Number

    Input Street Address    ${fakerStreet}
    Input City Address    ${fakerCity}
    Input Zip Code Address    ${fakerZipCode}
    Select Country Address
    Select State Address
    Input Phone Number    ${fakerPhoneNumber}
    sleep    2
    Go To Next Button
    sleep    2
    shipping assertion
    Placing Order


