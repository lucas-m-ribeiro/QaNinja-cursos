# robot -d .log/ <nome do arquivo>
# robto -d .log/ -i <nome da tag> <nome do arquivo>

*** Settings ***
Resource        base.robot

Test Setup      nova sessao
Test Teardown   encerra sessao


*** Variables ***

${check_thor}        id:thor

${iron}              css:input[value='iron-man']

${pantera}           xpath://*[@id='checkboxes']/input[7]


*** Test Cases ***

Check options with ID 
    Go To                           ${url}checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}



Check options with css slector
    Go To                           ${url}checkboxes
    Select Checkbox                 ${iron} 
    Checkbox Should Be Selected     ${iron} 


Check options with xpath
    Go To                           ${url}checkboxes
    Select Checkbox                 ${pantera}   
    Checkbox Should Be Selected     ${pantera}   


# *** Keywords ***
# nova sessao
#     Open Browser                    ${url}      chrome

# encerra sessao                      
#     Close Browser