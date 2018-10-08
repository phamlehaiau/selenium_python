*** Settings ***
Library  ../libs/Action.py
Variables   message.py

*** Variables ***
${BROWSER}

*** Keywords ***
Check/Uncheck A Checkbox
    [Arguments]  ${checkbox}
    clickElement  ${checkbox}

Check/Uncheck A Radio Button
    [Arguments]  ${radio}
    Click Element   ${radio}

Click Button
    [Arguments]  ${button}
    Click Element   ${button}

Click Link
    [Arguments]     ${link}
    Click Element    ${link}

Initialize System
    [Arguments]  ${BROWSER}     ${URL}
    Set Up  ${BROWSER}
    Open Page   ${URL}

Input Test Data
    [Arguments]  ${txtbox}    ${value}
    Input Value     ${txtbox}   ${value}

Select/Deselect an element
    [Arguments]  ${element}
    Click Element   ${element}

Verify Checked
    [Arguments]  ${element}
    ${status}   Get Checked    ${element}
    should be equal  ${status}  true    ${verifyselected}

Verify Disable
    [Arguments]  ${element}
    ${status}   Get Enable  ${element}
    should not be true  ${status}   ${verifydisable}

Verify Enable
    [Arguments]  ${element}
    ${status}   Get Enable  ${element}
    should be true  ${status}   ${verifyenable}

Verify Page Title
    [Arguments]     ${title}
    ${pagetitle}  Get Page Title
    should be equal  ${pagetitle}    ${title}    ${verifytitle}"${pagetitle}"  values=False     ignore_case=True

Verify Selected
    [Arguments]  ${element}
    ${status}   Get Selected    ${element}
    should be true  ${status}   ${verifyselected}

Verify Sum Total
    [Arguments]     ${checkelement}  ${number1}  ${number2}
    ${sumtotal} =   Evaluate    ${number1}+${number2}
    ${actualtotal}  Get Text    ${checkelement}
    Should Be Equal As Integers     ${actualtotal}  ${sumtotal}

Verify Text
    [Arguments]     ${checkelement}  ${expectedtxt}
    ${actualtxt}    Get Text    ${checkelement}
    should be equal     ${actualtxt}    ${expectedtxt}

Verify URL
    [Arguments]     ${url}
    ${pageurl}  Get URL
    should be equal  ${pageurl}    ${url}    ${verifyurl}"${pageurl}"  values=False     ignore_case=True

Verify Value
    [Arguments]     ${checkelement}     ${expectedvalue}
    ${actualvalue}  getValueAttribute  ${checkelement}
    should be equal     ${actualvalue}      ${expectedvalue}