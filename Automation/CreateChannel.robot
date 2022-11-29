*** Settings ***
Library    SeleniumLibrary
Documentation    This file having the Testcase of Login and logoout
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary
Resource    ../Pageobjects/GenericKeyword.robot
Resource    ../Pageobjects/Channel.robot
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
    [Tags]    Verify
    Verify Channel is Created














