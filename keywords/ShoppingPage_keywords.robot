*** Settings ***
Documentation    Keywords for Automation Demo store Page

Library    OperatingSystem
Library    SeleniumLibrary

Resource    ../testdata/CommonVariables.robot
Resource    ../common_utils/UICommonKeywords.robot

*** Keywords ***

Login into demoStoreSuperSqa Clothing

    Launch Browser
    click element     ${navigate_to_login_page}                    #Click my account
    input text        ${login_username_textbox}     ${EMAIL}       #enter username
    input password    ${login_password_textbox}     ${PASSWORD}    #enter Password
    click element     ${login_submit_button}                       #click login
    page should contain                             My account     #verifying my account text
    sleep  5s

Search Product

    Click Element    ${search_textbox}                             #click Search
    Input Text       ${Input_hoodie_search}         hoodie         #searching Hoodie
    Press keys       ${click_enter}                 ENTER          #clicking enter  for search

Choosing And Adding product to Cart

    click element    ${choose_product}                             #choosing the hoodie

    #Updating Quantity of the product

    input text       ${update_qty}                     2           #Updating/Changing the quantity
    click element    ${click_add_cart}                             #click add to cart

Cart Page
    click element               ${click_view_cart}                 #click view cart
    scroll element into view    ${scroll_down}                     #scroll to bottom
    page should contain                              Cart          #verifying the Cart text
    click element               ${choose_options}                  #choose freeshipping
    sleep  5s
    click element               ${click_proceed}                   #click proceed to checkout
    page should contain                             Checkout       #verifying the checkout textarea should contain
    scroll element into view    ${scroll_bottom}                   #scroll to bottom
    input text                  ${input_firstname}   vetri         #enter first name
    input text                  ${input_lastname}      DV          #enter last name
    input text                  ${input_companyname}  xyz          #enter company name
    sleep  5s
    page should contain                               Total         #verifying Total text
    Close browser