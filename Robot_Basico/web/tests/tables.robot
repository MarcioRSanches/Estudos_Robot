*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Verifica o valor ao informar o número da linha
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors       2       @vindiesel

Descobre a linha pelo texto chave e valida os demais valores
    Go To               ${url}/tables
    ${target}=          Get WebElement      xpath:.//tr[contains(., '@chadwickboseman')]
    Log                 ${target.text}
    Log To Console      ${target.text}
    Should Contain      ${target.text}      $ 700.000
    Should Contain      ${target.text}      Pantera Negra

#O segundo teste é mais acertivo, devido localizar a linha por um texto chave, caso a massa de dados seja alterada de linha não perde a referência do teste.