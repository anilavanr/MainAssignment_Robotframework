*** Settings ***
Library    SeleniumLibrary
Documentation    This file having the Testcase of Login and logoout
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary
Resource    ../Pageobjects/GenericKeyword.robot
Resource    ../Pageobjects/Username.robot
#Suite Setup    Initialize
#Suite Teardown   Logout of the page

*** Variables ***
${base_url}    https://open.rocket.chat/
${browser}           chrome



*** Test Cases ***
Testcase1
    [Tags]    Launch
    Initialize

Testcase2
    [Tags]    Login
    Login to the page

Testcase3
    [Tags]  Profile
    Go to Profile Section

Testcase4
    [Tags]    update_username
    Update the username in profile

Testcase5
    [Tags]    Logout
    Logout of the page





