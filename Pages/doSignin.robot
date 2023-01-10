*** Settings ***
Library    SeleniumLibrary
Variables    ../Selectors/SignIn.py

*** Keywords ***
Creating new Users
    click link      Create an Account

Input First Name
    [Arguments]    ${first}
    input text    ${enterFirstName}     ${first}

Input Last Name
    [Arguments]    ${last}
    input text    ${enterLastName}      ${last}

Select Checkbox
    click element    ${signinCheckBox}

Input Email
    [Arguments]    ${email}
    input text    ${enterEmail}     ${email}

Input Password
    [Arguments]    ${password}
    input text    ${enterPassword}     ${password}

Input Confirm Password
    [Arguments]    ${confirmPassword}
    input text    ${enterConfirmPassword}     ${confirmPassword}

Create Account Button
    click element      ${btnSubmit}
    sleep    2

Assertion
    page should contain    My Account

Signing Out
    click element    ${btnSignOut}
    click link    link:Sign Out
    sleep    2
    page should contain    You are signed out



