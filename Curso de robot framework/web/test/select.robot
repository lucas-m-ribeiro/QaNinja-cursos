#Usando robot para testar e validar campos de input do tipo select/dropdown
#tipos de listas contendo opções para serem selecionadas

*** Settings ***
Resource        base.robot

Test Setup      nova sessao
Test Teardown   encerra sessao


*** Test Cases ***
Select with the text and check with value

    Go To                               ${url}dropdown
    Select From List By Label           class:avenger-list                  Scott Lang
    ${selected}=                        Get Selected List Value             class:avenger-list
    Should Be Equal                     ${selected}                         7
 
Select with the value and check with the text

    Go To                               ${url}dropdown
    Select From List By Value           id:dropdown                         6
    ${selected}                         Get Selected List Label             id:dropdown
    Should Be Equal                     ${selected}                         Loki