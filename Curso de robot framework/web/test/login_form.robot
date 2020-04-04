# realizando login com o robot framework
# com keywords especificas

*** Settings ***
Resource        base.robot

Test Setup      nova sessao
Test Teardown   encerra sessao


*** Test Cases ***
Login successfully

    Go To                      ${url}login
    Login with                 stark  jarvis! 
    Page Should Contain        Olá, Tony Stark. Você acessou a área logada!


Wrong password

    [tags]                       invalida
    Go To                        ${url}login
    Login with                   stark  banana
    should contain login alert   Senha é invalida!


User does not exist

    [tags]                       user
    Go To                        ${url}login
    Login with                   banana  jarvis!
    should contain login alert   O usuário informado não está cadastrado!



*** Keywords ***

Login with
    [Arguments]     ${uname}       ${pass}

    Input Text      css:input[name=username]        ${uname}
    Input Text      css:input[name=password]        ${pass}
    Click Element   class:btn-login

Should contain login alert 

    [Arguments]     ${expect_message}

    ${message}=          Get WebElement                 id:flash
    Should Contain      ${message.text}                 ${expect_message}
