*** Settings ***
Library    SeleniumLibrary
Documentation    This file having the Testcase of Login and logoout
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary
Resource    ../Pageobjects/GenericKeyword.robot
Resource    ../Pageobjects/Chat.robot
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
    [Tags]    Create
    Create Channel

Testcase4
    [Tags]    verify_channel
    Verify Channel is Created

Testcase5
    [Tags]    verify_chat
    verify Chat is enabled















