*** Settings ***
Resource  ../tests/login_test.robot
Suite Teardown    Close Browser
Force Tags        CrossBrowserTesting
 
*** Test Cases ***
Login Should Succeed with Correct Credentials
    Open Login Page  BROWSER=Chrome  OS=Mac OSX 10.12  VERSION=62x64  RESOLUTION=1366x768
    Enter User Name
    Enter Password
    Click Login
    sleep    ${Delay}
    Assert Logged In Message
    [Teardown]    Close Browser
