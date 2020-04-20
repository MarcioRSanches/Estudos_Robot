*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          Welcome         Márcio
    Log To Console      ${result}       # Apenas mostra no console o resultado
    Should Be Equal     ${result}       Olá Márcio, Bem vindo ao estudo de Robot Framework
