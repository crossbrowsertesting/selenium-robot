*** Settings ***
Resource  ../tests/login_test.robot
Suite Teardown    Close Browser
Force Tags        CrossBrowserTesting
Library   pabot.PabotLib
 
*** Test Cases ***
Login Should Succeed with Correct Credentials
    ${valuesetname}=   Acquire Value Set
    ${browser}=    Get Value From Set   browser
    ${os}=   Get Value From Set   os
    Open Login Page  ${browser}  ${os}
    Enter User Name
    Enter Password
    Click Login
    sleep    ${Delay}
    Assert Logged In Message
    [Teardown]    Close Browser
    Release Value Set
