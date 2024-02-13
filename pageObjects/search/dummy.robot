*** Settings ***
Resource     ../base/base.robot
Variables    dummy-locator.yaml

*** Keywords ***

Click Sign In Button on HomePage
    Click Element    ${signin_btn_homepage}

Input Username For Sign In
    Wait Until Element Is Visible    ${input_username}
    Input Text    ${input_username}    ${valid_username}

Input Password For Sign In
    Wait Until Element Is Visible    ${input_password}
    Input Text    ${input_password}    ${valid_password}

Click Sign In Button on Sign In Page
    Click Element    ${signin_btn_signinpage}


Sign In With Valid Credential
    Click Sign In Button on HomePage
    Input Username For Sign In
    Input Password For Sign In
    Click Sign In Button on Sign In Page