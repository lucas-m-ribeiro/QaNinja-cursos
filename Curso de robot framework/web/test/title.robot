# robot -d .log/ <nome do arquivo>
# robto -d .log/ -i <nome da tag> <nome do arquivo>

*** Settings ***
Resource        base.robot

Test Setup      nova sessao
Test Teardown   encerra sessao


*** Test Cases ***
Should see page title
   Title Should Be     Training Wheels Protocol




