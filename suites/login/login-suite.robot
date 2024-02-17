*** Settings ***
Resource        ../../pageObjects/homepage/homepage-pom.robot
Resource        ../../pageObjects/loginpage/loginpage-pom.robot
*** Test Cases ***
Verify successfully login with valid Username and Password
    Open Flight Application
    Click Sign In button on Home Page
    Input valid Username
    Input valid Password
    Click Sign In button on Login Page
    Verify successfully loggged in 
    Close Flight Application
Verify failed login with invalid Username and Password
    Open Flight Application
    Click Sign In button on Home Page
    Input invalid Username
    Input invalid Password
    Click Sign In button on Login Page
    Verify fail loggged in 
    Close Flight Application
Verify failed login with invalid Username and valid Password
    Open Flight Application
    Click Sign In button on Home Page
    Input invalid Username
    Input valid Password
    Click Sign In button on Login Page
    Verify fail loggged in 
    Close Flight Application
Verify failed login with valid Username and invalid Password
    Open Flight Application
    Click Sign In button on Home Page
    Input valid Username
    Input invalid Password
    Click Sign In button on Login Page
    Verify fail loggged in 
    Close Flight Application
Verify failed login with empty Username and Password fields
    Open Flight Application
    Click Sign In button on Home Page
    Click Sign In button on Login Page
    Verify fail loggged in 
    Close Flight Application
Verify failed login with empty Username field 
    Open Flight Application
    Click Sign In button on Home Page
    Input valid Password
    Click Sign In button on Login Page
    Verify fail loggged in 
    Close Flight Application
Verify failed login with empty Password field 
    Open Flight Application
    Click Sign In button on Home Page
    Input valid Username
    Click Sign In button on Login Page
    Verify fail loggged in 
    Close Flight Application