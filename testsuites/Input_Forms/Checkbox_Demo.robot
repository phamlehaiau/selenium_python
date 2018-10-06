*** Settings ***
Resource    ../../generals/resource.robot
Test Setup  Initialize System   ${BROWSER}  ${URL}
Test Teardown  Tear Down

*** Variables ***
${URL}  http://www.seleniumeasy.com/test/basic-checkbox-demo.html

*** Test Cases ***
Test Script 01: Single Checkbox Demo
    [Tags]  Single_Checkbox_Demo
    Check/Uncheck A Checkbox   isAgeSelected
    Verify Text     txtAge      Success - Check box is checked

Test Script 02: Multiple Checkbox Demo
    [Tags]  Multiple_Checkbox_Demo
    Click Button    check1
    Verify Value    check1  Uncheck All
    Check/Uncheck A Checkbox  //label[text()="Option 3"]/input
    Verify Value    check1  Check All