*** Settings ***
Resource  ../tests/login_test.robot
Suite Teardown    Close Browser
Force Tags        CrossBrowserTesting
 
*** Test Cases ***
Login Should Succeed with Correct Credentials
    Open Login Page  BROWSER=Internet Explorer  VERSION=11  OS=Windows 10  RESOLUTION=1366x768
    Enter User Name
    Enter Password
    Click Login
    sleep    ${Delay}
    Assert Logged In Message
    [Teardown]    Close Browser
