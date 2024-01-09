*** Settings ***
Resource         ../pageObjects/signinPageObject/signinObject.robot

*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123

*** Test Cases ***
User should be able to login with valid credentials
    # Step 1: Open application
    Open Flight Application
    # Step 2: Click sign in button on home page
    Click Sign In Button On Home Page
    # Step 4: Verify sign in page appears
    Verify Login Page Appears
    # Step 5: Input email
    Input Email On Login Page               ${VALID_EMAIL}
    # Step 6: Input password
    Input Password On Login Page            ${VALID_PASSWORD}
    # Step 7: Click sign in button on login page
    Click Sign In Button On Login Page
    # Step 8: Verify user is logged in
    Verify User Is Logged In
    # Step 9: Close application
    Close Flight Application
