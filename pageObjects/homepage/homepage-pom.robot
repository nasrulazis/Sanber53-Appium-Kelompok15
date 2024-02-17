*** Settings ***
Variables                   homepage-locator.yaml
Resource                    ../base/base.robot
*** Keywords ***
Click Sign In button on Home Page
    Click Element       locator=${signin_btn_home}