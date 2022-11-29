*** Settings ***
Library    SeleniumLibrary
Documentation    This file having the Testcase of Login and logoout
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary


*** Variables ***
${base_url}    https://open.rocket.chat/
${browser}           chrome




*** Keywords ***
Initialize
    open browser    ${base_url}    ${browser}
    Maximize Browser Window
    title should be    Rocket.Chat
    wait until page contains    Rocket.Chat
    sleep    20

Login to the page
#    page should contain element    Login
    set selenium timeout    4
    ${input_text}    set variable    xpath://*[@id="username"]
    element should be enabled    ${input_text}
    element should be visible     ${input_text}
    input text    xpath://*[@id="username"]    Johnneymar

    ${input_text}    set variable    xpath://*[@id="username"]
    element should be enabled    ${input_text}
    element should be visible     ${input_text}
    input text    xpath://*[@id="password"]    test

    page should contain button    xpath://*[@id="react-root"]/div/div/div[2]/form/footer/div/button
    click button    xpath://*[@id="react-root"]/div/div/div[2]/form/footer/div/button
    sleep    5