*** Settings ***
Variables        loginpage-locator.yaml
Resource           ../base/base.robot
*** Keywords ***
Input valid Username 
    Wait Until Element Is Visible    locator=${username_input}
    Input Text                       locator=${username_input}
    ...                              text=${valid_username}      
Input invalid Username 
    Wait Until Element Is Visible    locator=${username_input}
    Input Text                       locator=${username_input}
    ...                              text=${invalid_username}               
Input valid Password
    Wait Until Element Is Visible     locator=${password_input}
    Input Text                        locator=${password_input}
    ...                               text=${valid_password}
Input invalid Password
    Wait Until Element Is Visible     locator=${password_input}
    Input Text                        locator=${password_input}
    ...                               text=${invalid_password}
Click Sign In button on Login Page
    Wait Until Element Is Visible    locator=${signin_btn_login}
    Click Element                    locator=${signin_btn_login}
Verify fail loggged in 
    Wait Until Page Contains          text=${login_error_message}

Verify successfully loggged in 
    Wait Until Element Is Visible    locator=${login_success}