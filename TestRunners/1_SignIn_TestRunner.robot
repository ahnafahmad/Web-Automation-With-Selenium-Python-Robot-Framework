*** Settings ***
Library    SeleniumLibrary
Library    String
Library    FakerLibrary     WITH NAME    faker
Resource    ../Setup/environment.robot
Resource    ../Pages/doSignin.robot
Suite Setup    opening my browser
Suite Teardown    closing all browser

*** Variables ***
${password}    Password@1234

*** Test Cases ***
Registering a new user
    Creating new Users
    ${fakerFirstName}=  faker.First Name
    ${fakerLastName}=  faker.Last Name
    ${numbers}=     Generate Random String    4    0123456789
    ${email2}=  set variable    @gmail.com
    ${email}=   set variable    ${fakerFirstName}${numbers}${email2}



    Input First Name    ${fakerFirstName}
    Input Last Name     ${fakerLastName}
    Select Checkbox
    scroll element into view    ${btnSubmit}
    Input Email    ${email}
    set global variable    ${email}
    Input Password    ${password}
    set global variable    ${password}
    Input Confirm Password    ${password}
    Create Account Button
    Assertion
    Signing Out



