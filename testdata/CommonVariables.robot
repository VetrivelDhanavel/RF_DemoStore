*** Variables ***


#Credentials
${EMAIL}      vetriveld35@gmail.com
${PASSWORD}      Vetri@123


#Common Variables
${URL}                                          http://demostore.supersqa.com/
${BROWSER}                                      Chrome
${navigate_to_login_page}       //a[@href='http://demostore.supersqa.com/my-account/'][1]
${login_username_textbox}       //input[@id='username']
${login_password_textbox}       //input[@id='password']
${login_submit_button}          //button[contains(text(),'Log in')]


#Search Product
${search_textbox}              //input[@class='search-field']
${Input_hoodie_search}         //input[@id='woocommerce-product-search-field-0']
${click_enter}                 //input[@id='woocommerce-product-search-field-0']

#choose and Add Product
${choose_product}             //h2[contains(text(),'Hoodie with Zipper')]
${update_qty}                 //input[contains(@class,'input-text qty')]
${click_add_cart}             //button[contains(text(),'Add to cart')]

#Cart Page
${click_view_cart}           //a[contains(text(),'View cart')][1]
${scroll_down}               //a[@class='checkout-button button alt wc-forward']
${choose_options}            //input[@id='shipping_method_0_free_shipping2']
${click_proceed}             (//a[@href='http://demostore.supersqa.com/checkout/'])[3]
${scroll_bottom}             //button[@id='place_order']
${input_firstname}           //input[@id='billing_first_name']
${input_lastname}            //input[@id='billing_last_name']
${input_companyname}         //input[@id='billing_company']