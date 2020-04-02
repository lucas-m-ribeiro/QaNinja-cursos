*** Settings ***
Library         SeleniumLibrary


*** Variables ***

${url}               https://training-wheels-protocol.herokuapp.com/

${check_thor}        id:thor

${iron}              css:input[value='iron-man']

${pantera}           xpath://*[@id='checkboxes']/input[7]



*** Test Cases ***

Check options with ID 
    Open Browser                    ${url}      chrome
    Go To                           ${url}checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    Close Browser


Check options with css slector
    Open Browser                    ${url}      chrome
    Go To                           ${url}checkboxes
    Select Checkbox                 ${iron} 
    Checkbox Should Be Selected     ${iron} 
    Close Browser


Check options with xpath

    Open Browser                    ${url}      chrome
    Go To                           ${url}checkboxes
    Select Checkbox                 ${pantera}   
    Checkbox Should Be Selected     ${pantera}   
    Sleep                           5
    Close Browser