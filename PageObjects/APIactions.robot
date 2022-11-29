*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary


*** Variables ***

${base_url}    https://open.rocket.chat/
${username}    Johnneymar
${user_password}    test
${email}    xaligal544@nubotel.com


*** Keywords ***
using post with username

    Create Session    username    ${base_url}
    ${body}=    create dictionary    user=${username}   password=${user_password}
    ${header}=    create dictionary    Content-Type=application/json
    ${response}=    post request    username    api/v1/login   data=${body}    headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}

    #validations
    ${status_code}=    convert to string    ${response.status_code}
    should be equal    ${status_code}    200


using post with email

    Create Session    mysession    ${base_url}
    ${body}=    create dictionary    user=${email}   password=${user_password}
    ${header}=    create dictionary    Content-Type=application/json
    ${response}=    post request    mysession    api/v1/login   data=${body}    headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}

    #validations
    ${status_code}=    convert to string    ${response.status_code}
    should be equal    ${status_code}    200

using post to update username
    create Session    update    ${base_url}
    ${body}=    create dictionary    user=peterneymar   password=test
    ${header}=    create dictionary    Content-Type=application/json
    ${response}=    post request     update    api/v1/login    data=${body}    headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}

    #validations
    ${status_code}=    convert to string    ${response.status_code}
    should be equal    ${status_code}    401

#    ${res_body}=    convert to string    ${response.content}
#    should contain     ${res_body}    peterneymar

update status name

    Create Session    status_name       ${base_url}
    ${body}=    create dictionary     status=away   messsage=Snacks Break
    ${header}=    create dictionary   Content-Type=application/json     X-Auth-Token=9rRZJE9SGoDzqgg5PGWook5ivy-DyHzUDfNXBeTdY8i   X-User-Id=XFQmJ46apB4f9prfY
    ${response}=    post request      status_name    api/v1/users.setStatus   data=${body}    headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}
    #validations
    ${status_code}=    convert to string    ${response.status_code}
    should be equal    ${status_code}    200



creating channel
    Create Session    channel       ${base_url}
    ${body}=    create dictionary     name=Test1robot    members=    readOnly=false    extradata=
    ${header}=    create dictionary   Content-Type=application/json     X-Auth-Token=9rRZJE9SGoDzqgg5PGWook5ivy-DyHzUDfNXBeTdY8i   X-User-Id=XFQmJ46apB4f9prfY
    ${response}=    post request      channel    api/v1/groups.create  data=${body}    headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}
    #validations
    ${status_code}=    convert to string    ${response.status_code}
    should be equal    ${status_code}    400

Delete Channel
    ${body}=    create dictionary    roomId=ohsfiunrMhLRtFJai"
    ${status_code}=    POST On Session    ${body}    api/v1/groups.delete
    should be equal as integers    ${status_code}    200

send chat
    ${body}=    create dictionary    channel=Test_robot    text=Hi
    log to console    ${body}
    ${status_code}    post request    ${body}    api/v1/chat.postMessage
    should be equal as integers    ${status_code}    200