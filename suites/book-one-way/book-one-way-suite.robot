*** Settings ***
Resource        ../../pageObjects/book-one-way/book-one-way.robot
Resource        ../../pageObjects/book-one-way/signin.robot

Test Setup        Open Flight Application
Test Teardown     Close Flight Application

*** Test Cases ***
User Cannot Book A Flight Without Sign In
    Click Book Flight Menu Before Login
    Verify User Cannot Book A Flight Before Sign In

User Can Access Book Flight Page After Sign In
    Sign In
    Click Book Flight Menu
    Verify User Navigated To Book Flight Page

User Can Select Origin City
    Sign In
    Click Book Flight Menu
    Click Spinner From City
    Select Spinner From City Item Toronto
    Verify From City Is Selected

User Can Select Destination City
    Sign In
    Click Book Flight Menu
    Click Spinner To City
    Select Spinner To City Item Paris
    Verify To City Is Selected

User Can Select Flight Class
    Sign In
    Click Book Flight Menu
    Click Spinner Class
    Select Spinner Class Item Business
    Verify Class Is Selected

User Can Select Book Start Date
    Sign In
    Click Book Flight Menu
    Input Book Start Date
    Select Start Date
    Verify Start Date Is Selected

User Can Select Book End Date
    Sign In
    Click Book Flight Menu
    Input Book End Date
    Select End Date
    Verify End Date Is Selected

User Can See And Validate Order
    Sign In
    Click Book Flight Menu
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
    Verify Flight Date And Destination

User Successfully Book A Flight
    Sign In
    Click Book Flight Menu
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