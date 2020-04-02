*** Settings ***
Library     app.py


*** test cases ***
Deve retornar mensagem de boas vindas!
    ${result}=     welcome     Lucas
    Should be Equal     ${result}   Olá Lucas, Bem vindo ao curso basico de robot framework