*** Settings ***
Resource        base.robot

Test Setup      nova sessao
Test Teardown   encerra sessao


*** Test Cases ***
Select with id

    Go To                           ${url}radios
    Select Radio Button             movies      cap
    Radio Button Should Be Set To   movies      cap

Select with value

    Go To                           ${url}radios
    Select Radio Button             movies      iron-man
    Radio Button Should Be Set To   movies      iron-man
    Sleep                           10