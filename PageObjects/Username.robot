*** Settings ***
Library    SeleniumLibrary
Documentation    This file having the Testcase of Login and logoout
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary



*** Keywords ***
Go to Profile Section
    title should be    (•) Rocket.Chat
    wait until page contains    (•) Rocket.Chat
    set selenium timeout    4
    page should contain image    xpath://*[@id="rocket-chat"]/aside/div[1]/div/div/div[1]/figure/img
    click image    xpath://*[@id="rocket-chat"]/aside/div[1]/div/div/div[1]/figure/img
    ${element_text}    set variable   xpath:/html/body/div[4]/div/div/li[7]/div/div[2]
    element should be enabled     ${element_text}
    element should be visible      ${element_text}
    click element    xpath:/html/body/div[4]/div/div/li[7]/div/div[2]
    sleep    7

Update the username in profile
#    page should contain element    xpath://*[@id="PageHeader-title"]
#    wait until page contains    xpath://*[@id="PageHeader-title"]
#    sleep    10
     clear element text    xpath://*[@id="rocket-chat"]/div[3]/section/div[2]/div/div[1]/div/div/form/div[2]/div[2]/span[1]/label/input
     input text    xpath://*[@id="rocket-chat"]/div[3]/section/div[2]/div/div[1]/div/div/form/div[2]/div[2]/span[1]/label/input     Peterneymar
     sleep    3

#     ${button}    set variable    relativexpath://button[contains(text(),'Save changes')]
#     element should be enabled     ${button}
#     element should be visible      ${button}
#     click button    relativexpath://button[text()='Save changes']
#     sleep    2

     ${element_text}    set variable   xpath://*[@id="rocket-chat"]/aside/div[5]/div/div/header/div/button/i
     element should be enabled     ${element_text}
     element should be visible      ${element_text}
     click element    xpath://*[@id="rocket-chat"]/aside/div[5]/div/div/header/div/button/i
     sleep    2

     page should contain image    xpath://*[@id="rocket-chat"]/aside/div[1]/div/div/div[1]/figure/img
     click image    xpath://*[@id="rocket-chat"]/aside/div[1]/div/div/div[1]/figure/img
     log to console    clicked image button successfully

Logout of the page
     ${logout}    set variable    xpath:/html/body/div[4]/div/div/li[8]/div/div[2]
     element should be visible    ${logout}
     element should be enabled     ${logout}
     click element  xpath:/html/body/div[4]/div/div/li[8]/div/div[2]
     log to console    clicked logout successfully
     sleep  4