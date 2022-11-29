*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary
Resource    ../Pageobjects/APIactions.robot

*** Variables ***

${base_url}    https://open.rocket.chat/
${username}    Johnneymar
${user_password}    test
${email}    xaligal544@nubotel.com



*** Test Cases ***
Testcase1: Login Link with Username
    [Tags]    Login_username
    using post with username

Testcase2: Login Link with Email
    [Tags]    Login_email
    using post with email

Testcase3: Update the username in profile
    [Tags]    Update_username
    using post to update username

Testcase4: Change Status
    [Tags]    status
    update status name

Testcase5: Creating Channel
    [Tags]    channel
    creating channel

Testcase6: Deleting channel
    [Tags]    Delete
    Delete Channel
Testcase7: Sending Chat
    [Tags]    Chat
    send chat