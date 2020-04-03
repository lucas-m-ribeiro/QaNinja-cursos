# arquivo de configurações basicas nos testes com robot

# robot -d .log/ <nome do arquivo>
# robto -d .log/ -i <nome da tag> <nome do arquivo>

*** Settings ***
Library         SeleniumLibrary


*** Variables ***

${url}          https://training-wheels-protocol.herokuapp.com/


*** Keywords ***
nova sessao
    Open Browser                    ${url}      chrome

encerra sessao   
    Capture Page Screenshot                   
    Close Browser