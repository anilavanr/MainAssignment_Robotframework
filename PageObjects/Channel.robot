*** Settings ***
Library    SeleniumLibrary
Documentation    This file having the Testcase of Login and logoout
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary

*** Keywords ***
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


