*** Settings ***
Resource        ../base/base.robot
Variables       signinpage_locators.yaml

*** Keywords ***
Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${signIn_button_homePage}
    Click Element                    ${signIn_button_homePage}

Verify Login Page Appears
    Wait Until Element Is Visible    ${email_input_signinPage}

Input Email On Login Page 
    [Arguments]        ${email}
    Input Text         ${email_input_signinPage}    ${email}

Input Password On Login Page
    [Arguments]        ${password}
    Input Text         ${password_input_signinPage}    ${password}

Click Sign In Button On Login Page
    Click Element        ${signIn_button_signinPage}    

Verify User Is Logged In
    Wait Until Element Is Visible    ${username_text_homePage}

Verify User Is Not Logged In
    Wait Until Element Is Visible    ${signIn_button_signinPage}