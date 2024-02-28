*** Settings ***
Resource                    ../base/base.robot
Variables                   book-roundtrip-locator.yaml
*** Keywords ***
Verify User Cannot Book A Flight Before Sign In
    Page Should Contain Text    ${text_main}

Verify User Navigated To Book Flight Page
    Wait Until Page Contains Element    ${book_btn_order}

Verify From City Is Selected
    Wait Until Page Contains   ${text_toronto}

Verify To City Is Selected
    Wait Until Page Contains  ${text_paris}

Verify Class Is Selected
    Wait Until Page Contains   ${text_class_business}

Verify Start Date Is Selected
    Should Not Be Empty   id=${id_start_date_selected}

Verify End Date is Selected
    Should Not Be Empty   id=${id_end_date_selected}

Verify Roundtrip Button is Selected
    Wait Until Page Contains Element    ${text_roundtrip}

Verify Flight Date And Destination
    Wait Until Page Contains    ${text_from_toronto}
    Wait Until Page Contains    ${text_to_paris}
    Wait Until Page Contains    ${text_start_date}
    Wait Until Page Contains    ${text_end_date}

Verify Book Flight Success
    Wait Until Page Contains    ${text_book_success}

Click Book Flight Menu Before Login
    Wait Until Element Is Visible    ${book_menu_btn_before_login}
    Click Element    ${book_menu_btn_before_login}

Click Book Flight Menu
    Wait Until Element Is Visible    ${book_menu_btn}
    Click Element    ${book_menu_btn}

Click Book Roundtrip Button
    Wait Until Element Is Visible    ${text_roundtrip}
    Click Element    ${text_roundtrip}

Click Spinner From City
    Wait Until Element Is Visible    ${book_spinner_city_from}
    Click Element    ${book_spinner_city_from}

Select Spinner From City Item Toronto
    Wait Until Element Is Visible    ${book_spinner_city_item_toronto}
    Click Element    ${book_spinner_city_item_toronto}

Click Spinner To City
    Wait Until Element Is Visible    ${book_spinner_city_to}
    Click Element    ${book_spinner_city_to}

Select Spinner To City Item Paris
    Wait Until Element Is Visible    ${book_spinner_city_item_paris}
    Click Element    ${book_spinner_city_item_paris}

Click Spinner Class
    Wait Until Element Is Visible    ${book_spinner_class}
    Click Element    ${book_spinner_class}

Select Spinner Class Item First
    Wait Until Element Is Visible    ${book_spinner_class_item_first}
    Click Element    ${book_spinner_class_item_first}

Select Spinner Class Item Business
    Wait Until Element Is Visible    ${book_spinner_class_item_business}
    Click Element    ${book_spinner_class_item_business}

Input Book Start Date
    Wait Until Element Is Visible    ${book_input_date_start}
    Click Element    ${book_input_date_start}

Select Start Date
    Wait Until Element Is Visible    ${book_input_date_item_21}
    Click Element    ${book_input_date_item_21}
    Wait Until Element Is Visible    ${book_input_date_submit}
    Click Element    ${book_input_date_submit}

Input Book End Date
    Wait Until Element Is Visible    ${book_input_date_end}
    Click Element    ${book_input_date_end}

Select End Date
    Wait Until Element Is Visible    ${book_input_date_item_23}
    Click Element    ${book_input_date_item_23}
    Wait Until Element Is Visible    ${book_input_date_submit}
    Click Element    ${book_input_date_submit}

Click Radio Flight
    Wait Until Element Is Visible    ${book_radio_btn_flight}
    Click Element    ${book_radio_btn_flight}

Click Radio Flight And Hotel
    Wait Until Element Is Visible    ${book_radio_btn_flight_and_hotel}
    Click Element    ${book_radio_btn_flight_and_hotel}

Click Checkbox Day
    Wait Until Element Is Visible    ${book_checkbox_day}
    Click Element    ${book_checkbox_day}

Click Book Flight Button
    Wait Until Element Is Visible    ${book_btn_order}
    Click Element    ${book_btn_order}

Click Price Item 1
    Wait Until Element Is Visible    ${book_confirm_price_1}
    Click Element    ${book_confirm_price_1}

Click Price Item 2
    Wait Until Element Is Visible    ${book_confirm_price_2}
    Click Element    ${book_confirm_price_2}

Click Confirm Button
    Wait Until Element Is Visible    ${book_confirm_btn}
    Click Element    ${book_confirm_btn}
