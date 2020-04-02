*** Settings ***
Library         SeleniumLibrary


*** Test Cases ***
Should see page title
    Open Browser        https://training-wheels-protocol.herokuapp.com/     chrome
    Title Should Be     Training Wheels Protocol
    Close Browser




