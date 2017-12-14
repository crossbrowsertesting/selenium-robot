*** Settings ***
Resource  ../tests/setup.robot
Suite Teardown    Close Browser
Force Tags        CrossBrowserTesting
 
*** Test Cases ***
Login Should Succeed with Correct Credentials
    Open Login Page  BROWSER=Internet Explorer  OS=Windows 10
    Enter User Name
    Enter Password
    Click Login
    sleep    ${Delay}
    Assert Logged In Message
    [Teardown]    Close Browser
