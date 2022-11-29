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

    ${input_text}    set variable    xpath://*[@id="password"]
    element should be enabled    ${input_text}
    element should be visible     ${input_text}
    input text    xpath://*[@id="password"]    test

    page should contain button    xpath://*[@id="react-root"]/div/div/div[2]/form/footer/div/button
    click button    xpath://*[@id="react-root"]/div/div/div[2]/form/footer/div/button
    sleep    5

Create Channel
    title should be    (•) Rocket.Chat
    wait until page contains    (•) Rocket.Chat
    set selenium timeout    4
    click button    xpath://*[@id="rocket-chat"]/aside/div[1]/div/div/div[2]/button[5]
    sleep    2
    click element    xpath:/html/body/div[4]/div/ul/li[1]/div
    sleep    2
    input text    xpath://*[@id="modal-root"]/div/dialog/div/div[1]/div/fieldset/div[1]/span/label/input    TestRobot
    sleep    2
    input text    xpath://*[@id="modal-root"]/div/dialog/div/div[1]/div/fieldset/div[2]/span/input    robotframework
    sleep    2
    click button    xpath://*[@id="modal-root"]/div/dialog/div/div[2]/div/button[2]
    sleep    4

Verify Channel is Created
    page should contain element    xpath://*[@id="rocket-chat"]/aside/div[3]/div/div/div/div[1]/div/div/div[3]/a/div/div[2]/div[1]/div[2]
    ${element}    set variable    xpath://*[@id="rocket-chat"]/aside/div[3]/div/div/div/div[1]/div/div/div[3]/a/div/div[2]/div[1]/div[2]
    element should be enabled    ${element}
    element should be visible    ${element}
    sleep     5

verify Chat is enabled
    page should contain element    xpath://*[@id="rocket-chat"]/aside/div[3]/div/div/div/div[1]/div/div/div[3]/a/div/div[2]/div[1]/div[2]
    click element    xpath://*[@id="rocket-chat"]/aside/div[3]/div/div/div/div[1]/div/div/div[3]/a/div/div[2]/div[1]/div[2]
    sleep    2

    page should contain image    xpath://*[@id="rocket-chat"]/div[3]/main/header/div/div[2]/figure/img

    input text    xpath://*[@id="chat-window-od3C2jmAZ2tnmHDsP"]/div/div/footer/div/label    Hi
    sleep    2

    click button    xpath://*[@id="chat-window-od3C2jmAZ2tnmHDsP"]/div/div/footer/div/label/span[2]/svg
    sleep    3
