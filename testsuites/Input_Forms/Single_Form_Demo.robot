*** Settings ***
Resource    ../../generals/resource.robot
Test Setup  Initialize System   ${BROWSER}  ${URL}
Test Teardown  Tear Down

*** Variables ***
${URL}  http://www.seleniumeasy.com/test/basic-first-form-demo.html

*** Test Cases ***
Test Script 01: Single Input Field
    [Tags]  Single _Input_Field
    Input Test Data     user-message    Python Automation Demo
    Click Button   //button[text()="Show Message"]
    Verify Text    display  Python Automation Demo

Test Script 02: Two Input Fields
    [Tags]  Two_Input_Fields
    Input Test Data  sum1   123
    Input Test Data     sum2    456
    Click Button    //button[text()="Get Total"]
    Verify Sum Total  displayvalue  123     456