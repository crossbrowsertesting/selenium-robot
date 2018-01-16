*** Settings ***
Library           Selenium2Library
 
*** Variables ***
${Username}           tester@crossbrowsertesting.com
${Password}           test123
${SiteUrl}            http://crossbrowsertesting.github.io/login-form.html
${ExpectedMessage}    You are now logged in!
${Message}            You are now logged in!
${Delay}              10s
${CBTUser}            chase@crossbrowsertesting.com
${AccessKey}          NOTMYAUTHKEY
${Video}              true
${RemoteUrl}          http://${CBTUser}:${AccessKey}@hub.crossbrowsertesting.com:80/wd/hub

 
*** Keywords ***
Open Login Page
    [Arguments]   ${BROWSER}  ${VERSION}  ${OS}  ${RESOLUTION}
    Open Browser   url=${SiteUrl}   browser=${BROWSER}   remote_url=${RemoteURL}   desired_capabilities=browserName:${BROWSER}, version: ${VERSION}, platform:${OS}, screenResolution:${RESOLUTION}, record_video:${Video}
 
Maximize Browser
    Maximize Browser Window
 
Enter User Name
    Input Text   id=username    ${Username}
 
Enter Password
    Input Text   id=password    ${Password}
 
Click Login
    Click Button   id=submit

Assert Logged In Message
    Element Text Should Be   id=logged-in   ${ExpectedMessage}   ${Message}
