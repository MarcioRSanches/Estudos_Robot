*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Variables ***
${check_thor}           id:thor
${check_iron}           css:input[value='iron-man']
${check_guardian}       xpath://*[@id='checkboxes']/input[5]

*** Test Cases ***
Marcando opção com ID
    [tags]      thor
    Go To                                   ${url}/checkboxes
    Select Checkbox                         ${check_thor}
    Checkbox Should Be Selected             ${check_thor}

Marcando opção com CSS
    [tags]      ironman
    Go To                                   ${url}/checkboxes
    Select Checkbox                         ${check_iron}
    Checkbox Should Be Selected             ${check_iron}

Marcando opção com XPath
    [tags]      guardian
    Go To                                   ${url}/checkboxes
    Select Checkbox                         ${check_guardian}
    Checkbox Should Be Selected             ${check_guardian}         
