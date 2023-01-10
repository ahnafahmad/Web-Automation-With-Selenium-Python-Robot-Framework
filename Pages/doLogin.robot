*** Settings ***
Library    SeleniumLibrary
Variables    ../Selectors/Login.py

*** Keywords ***
Login with Valid Credentials
    click link      Sign In

    [Arguments]    ${email}     ${password}
    input text      ${enterValidEmail}      ${email}
    input text    ${entervalidPassword}     ${password}
    wait until element is visible    ${btnSignin}
    click element    ${btnSignin}
    sleep    2

Assertion
    page should contain     Welcome