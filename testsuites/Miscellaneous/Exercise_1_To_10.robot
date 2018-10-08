*** Settings ***
Resource    ../../generals/resource.robot
Test Setup      Set Up   ${BROWSER}
Test Teardown   Tear Down

*** Test Cases ***
Test Script 01: Verify URL and title
    [Tags]  Verify_URL_Title
    Open Page    https://www.phptravels.net/en
    Verify Page Title    PHPTRAVELS | Travel Technology Partner
    Click Link   MY ACCOUNT
    Click Link   Login
    Verify Page Title    Login
    Back Page
    Verify URL  https://www.phptravels.net/en
    Forward Page
    Verify URL  https://www.phptravels.net/login

Test Script 02: Login Empty
    [Tags]  Login_Empty
    Open Page   https://phptravels.org
    Click Button   login
    Verify Text   //*[@id="main-body"]/div/div/div[1]/div/div[2]    Login Details Incorrect. Please try again.

Test Script 03: Login with in an invalid email
    [Tags]  Login_Invalid_Email
    Open Page   http://automationpractice.com/index.php
    Click Link  Sign in
    Input Test Data     email   123434234@12312.123123
    Click Button    SubmitLogin
    Verify Text     //*[@id="center_column"]/div[1]/ol/li  Password is required.

Test Script 04: Login with an incorrect password
    [Tags]  Login_Incorrect_Password
    Open Page   http://automationpractice.com/index.php
    Click Link  Sign in
    Input Test Data     email   automation@gmail.com
    Input Test Data  passwd  123
    Click Button    SubmitLogin
    Verify Text  //*[@id="center_column"]/div[1]/ol/li   Invalid password.

Test Script 05: Verify enabled/disabled elements
    [Tags]  Verify_Enable_Disable
    Open Page   http://daominhdam.890m.com/
    Verify Enable   mail
    Verify Enable   under_18
    Verify Enable   over_18
    Verify Enable   user_edu
    Verify Enable   user_job1
    Verify Enable   user_interest
    Verify Enable   //*[@id="design"]
    Verify Enable   //*[@id="slider-1"]
    Verify Enable   //*[@id="button-enabled"]
    Verify Disable  password
    Verify Disable  radio-disabled
    Verify Disable  bio
    Verify Disable  user_job2
    Verify Disable  check-disbaled
    Verify Disable  slider-2
    Verify Disable  //*[@id="button-disabled"]

Test Script 06: Verify a selected element
    [Tags]  Verify_Selected
    Open Page   http://daominhdam.890m.com/
    Select/Deselect an element  under_18
    Select/Deselect an element   development
    Verify Selected     under_18
    Verify Selected     development

#Test Script 08: Custom Dropdown/List
#    [Tags]  Custom_Dropdown_List
#    Open Page   http://jqueryui.com/resources/demos/selectmenu/default.html
#    Select/Deselect an element  //*[@id="number"]/option[19]
#    Verify Selected     //*[@id="number"]/option[19]

Test Script 09: Verify a selected checkbox
    [Tags]  Verify_Selected_Checkbox
    Open Page   http://demos.telerik.com/kendo-ui/styling/checkboxes
    Select/Deselect an element   //*[@id="example"]//label[text()="Dual-zone air conditioning"]
    Verify Checked     //*[@id="eq5"]
    Select/Deselect an element     //*[@id="example"]/div/ul/li[5]/label

Test Script 10: Verify a selected radio
    [Tags]  Verify_Selected_Radio
    Open Page   http://demos.telerik.com/kendo-ui/styling/radios
    Select/Deselect an element  //*[@id="example"]/div/ul/li[3]/label
    Verify Selected     //*[@id="engine3"]