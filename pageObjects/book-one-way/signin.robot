*** Settings ***
Resource                    ../base/base.robot
Variables                   signin-locator.yaml
*** Keywords ***
Click Sign In button on Home Page
    Wait Until Element Is Visible    ${signin_btn}
    Click Element    ${signin_btn}

Input Username
    Wait Until Element Is Visible    ${field_username}
    Input Text    ${field_username}    ${username}

Input Password
    Wait Until Element Is Visible    ${field_password}
    Input Text    ${field_password}    ${password}

Click Submit Button
    Click Element    ${signin_btn_submit}

Sign In
    Click Sign In button on Home Page
    Input Username
    Input Password
    Click Submit Button
    