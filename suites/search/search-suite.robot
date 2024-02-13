*** Settings ***
Resource    ../../pageObjects/search/search.robot
Resource    ../../pageObjects/search/dummy.robot

Test Setup        Open Flight Application
Test Teardown     Close Flight Application

*** Test Cases ***
User Should Not be Able to Access SearchPage before Sign In
    Click Search Button on HomePage
    Verify User Unable to Access SearchPage

User Should be Able to Access SearchPage after Sign In
    Sign In With Valid Credential
    Click Search Button on HomePage After Sign In
    Verify User Can Access SearchPage

User Search Flight Number with Valid Data
    Sign In With Valid Credential
    Click Search Button on HomePage After Sign In
    Verify User Can Access SearchPage
    Input Search Valid Flight Number On Form
    Click Search Button On SearchPage
    Verify User Enable to Access Page Flight Destination

User Search Flight Number with Invalid Data
    Sign In With Valid Credential
    Click Search Button on HomePage After Sign In
    Verify User Can Access SearchPage
    Input Search Invalid Flight Number On Form
    Click Search Button On SearchPage
    Verify Error Message

User Search Flight Number with Blank Form or Data
    Sign In With Valid Credential
    Click Search Button on HomePage After Sign In
    Verify User Can Access SearchPage
    Input Search Blank Flight Number On Form
    Click Search Button On SearchPage
    Verify Error Message





