*** Settings ***
Resource         ../pageObjects/signinPageObject/signinObject.robot

*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_EMAIL}             examplemail@gmail.com
${INVALID_PASSWORD}          123Abc

*** Test Cases ***
User should be able to login with valid credentials
    # Step 1: Open application
    Open Flight Application
    # Step 2: Click sign in button on home page
    Click Sign In Button On Home Page
    # Step 3: Verify sign in page appears
    Verify Login Page Appears
    # Step 4: Input email
    Input Email On Login Page               ${VALID_EMAIL}
    # Step 5: Input password
    Input Password On Login Page            ${VALID_PASSWORD}
    # Step 6: Click sign in button on login page
    Click Sign In Button On Login Page
    # Step 7: Verify user is logged in
    Verify User Is Logged In
    # Step 8: Close application
    Close Flight Application

User should not be able to login with invalid email
    # Step 1: Open application
    Open Flight Application
    # Step 2: Click sign in button on home page
    Click Sign In Button On Home Page
    # Step 3: Verify sign in page appears
    Verify Login Page Appears
    # Step 4: Input email
    Input Email On Login Page               ${INVALID_EMAIL}
    # Step 5: Input password
    Input Password On Login Page            ${VALID_PASSWORD}
    # Step 6: Click sign in button on login page
    Click Sign In Button On Login Page
    # Step 7: Verify user is not logged in
    Verify User Is Not Logged In
    # Step 8: Close application
    Close Flight Application

User should not be able to login with invalid password
    # Step 1: Open application
    Open Flight Application
    # Step 2: Click sign in button on home page
    Click Sign In Button On Home Page
    # Step 3: Verify sign in page appears
    Verify Login Page Appears
    # Step 4: Input email
    Input Email On Login Page               ${VALID_EMAIL}
    # Step 5: Input password
    Input Password On Login Page            ${INVALID_PASSWORD}
    # Step 6: Click sign in button on login page
    Click Sign In Button On Login Page
    # Step 7: Verify user is not logged in
    Verify User Is Not Logged In