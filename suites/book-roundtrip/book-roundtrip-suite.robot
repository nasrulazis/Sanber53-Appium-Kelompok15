*** Settings ***
Resource        ../../pageObjects/book-roundtrip/book-roundtrip.robot
Resource        ../../pageObjects/book-one-way/signin.robot

Test Setup        Open Flight Application
Test Teardown     Close Flight Application

*** Test Cases ***
User Can Select Book Roundtrip
    Sign In
    Click Book Flight Menu
    Click Book Roundtrip Button
    Verify Roundtrip Button is Selected

User Successfully Book A Flight
    Sign In
    Click Book Flight Menu
    Click Book Roundtrip Button
    Click Spinner From City
    Select Spinner From City Item Toronto
    Click Spinner To City
    Select Spinner To City Item Paris
    Click Spinner Class
    Select Spinner Class Item Business
    Input Book Start Date
    Select Start Date
    Input Book End Date
    Select End Date
    Click Radio Flight
    Click Checkbox Day
    Click Book Flight Button
    Click Price Item 1
    Click Confirm Button
    Verify Book Flight Success