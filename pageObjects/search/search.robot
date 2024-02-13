*** Settings ***
Resource     ../base/base.robot
Variables    search-locator.yaml

*** Keywords ***
Click Search Button on HomePage
    Wait Until Element Is Visible    ${search_btn_homepage}    
    Click Element    ${search_btn_homepage}

Click Search Button on HomePage After Sign In
    Wait Until Element Is Visible    ${search_btn}
    Click Element    ${search_btn}

Verify User Can Access SearchPage
    Wait Until Element Is Visible    ${search_btn_page}
    Page Should Contain Element    ${search_btn_page}

Input Search Valid Flight Number On Form
    Input Text    ${input_search_form}    ${valid_flight_number}

Click Search Button On SearchPage
    Click Element    ${search_btn_page}

Verify User Enable to Access Page Flight Destination    
    Wait Until Page Contains    ${page_flight_destination}

Verify Error Message
    Wait Until Page Contains    ${message_error}

Input Search Invalid Flight Number On Form
    Input Text    ${input_search_form}    ${invalid_flight_number}

Input Search Blank Flight Number On Form
    Input Text    ${input_search_form}    ${blank_flight_number}

Verify User Unable to Access SearchPage
    Page Should Contain Element    ${search_btn_homepage}
