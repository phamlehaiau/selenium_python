*** Settings ***
Resource    ../../generals/resource.robot
Test Setup  Initialize System   ${BROWSER}  ${URL}
Test Teardown  Tear Down

*** Variables ***
${URL}  http://www.seleniumeasy.com/test/basic-radiobutton-demo.html

*** Test Cases ***
Test Scrip 01: Radio Button Demo
    [Tags]  Radio_Button_Demo
    Check/Uncheck A Radio Button    //*[@value="Male" and @name="optradio"]
    Click Button  buttoncheck
    Verify Text  radiobutton    Radio button 'Male' is checked
    Check/Uncheck A Radio Button    //*[@value="Female" and @name="optradio"]
    Click Button  buttoncheck
    Verify Text  radiobutton    Radio button 'Female' is checked

Test Script 02: Group Radio Buttons Demo 1
    [Tags]  Group_Radio_Buttons_Demo
    Check/Uncheck A Radio Button    //*[@value="Male" and @name="gender"]
    Check/Uncheck A Radio Button    //*[@value="0 - 5" and @name="ageGroup"]
    Click Button    //button[text()="Get values"]
    Verify Text  //*[@class="groupradiobutton"]  Sex : Male\nAge group: 0 - 5

Test Script 03: Group Radio Buttons Demo 2
    [Tags]  Group_Radio_Buttons_Demo
    Check/Uncheck A Radio Button    //*[@value="Male" and @name="gender"]
    Check/Uncheck A Radio Button    //*[@value="5 - 15" and @name="ageGroup"]
    Click Button    //button[text()="Get values"]
    Verify Text  //*[@class="groupradiobutton"]  Sex : Male\nAge group: 5 - 15

Test Script 04: Group Radio Buttons Demo 3
    [Tags]  Group_Radio_Buttons_Demo
    Check/Uncheck A Radio Button    //*[@value="Male" and @name="gender"]
    Check/Uncheck A Radio Button    //*[@value="15 - 50" and @name="ageGroup"]
    Click Button    //button[text()="Get values"]
    Verify Text  //*[@class="groupradiobutton"]  Sex : Male\nAge group: 15 - 50

Test Script 05: Group Radio Buttons Demo 4
    [Tags]  Group_Radio_Buttons_Demo
    Check/Uncheck A Radio Button    //*[@value="Male" and @name="gender"]
    Check/Uncheck A Radio Button    //*[@value="15 - 50" and @name="ageGroup"]
    Click Button    //button[text()="Get values"]
    Verify Text  //*[@class="groupradiobutton"]  Sex : Male\nAge group: 15 - 50

Test Script 06: Group Radio Buttons Demo 5
    [Tags]  Group_Radio_Buttons_Demo
    Check/Uncheck A Radio Button    //*[@value="Female" and @name="gender"]
    Check/Uncheck A Radio Button    //*[@value="0 - 5" and @name="ageGroup"]
    Click Button    //button[text()="Get values"]
    Verify Text  //*[@class="groupradiobutton"]  Sex : Female\nAge group: 0 - 5

Test Script 07: Group Radio Buttons Demo 6
    [Tags]  Group_Radio_Buttons_Demo
    Check/Uncheck A Radio Button    //*[@value="Female" and @name="gender"]
    Check/Uncheck A Radio Button    //*[@value="5 - 15" and @name="ageGroup"]
    Click Button    //button[text()="Get values"]
    Verify Text  //*[@class="groupradiobutton"]  Sex : Female\nAge group: 5 - 15

Test Script 08: Group Radio Buttons Demo 7
    [Tags]  Group_Radio_Buttons_Demo
    Check/Uncheck A Radio Button    //*[@value="Female" and @name="gender"]
    Check/Uncheck A Radio Button    //*[@value="15 - 50" and @name="ageGroup"]
    Click Button    //button[text()="Get values"]
    Verify Text  //*[@class="groupradiobutton"]  Sex : Female\nAge group: 15 - 50