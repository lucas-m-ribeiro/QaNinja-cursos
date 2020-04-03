# Usando o robot para fazer validações em tabelas!

*** Settings ***
Resource        base.robot

Test Setup      nova sessao
Test Teardown   encerra sessao


*** Test Cases ***
# fazendo a validação pela linha em especifico
Check the value when send the line number
    
    Go To                           ${url}tables
    Table Row Should Contain        id:actors                       1                    $ 10.000.000


# fazendo a validação descobrindoa a linha pelo texto chave
Find line with key text and check others values
    
    Go To                           ${url}tables
    ${target}=                      Get WebElement                                       xpath:.//tr[contains(.,'chadwickboseman')]
    Log                             ${target.text}     
    Log To Console                  ${target.text}     
    Should Contain                  ${target.text}                                       $ 700.000
    Should Contain                  ${target.text}                                       Pantera Negra