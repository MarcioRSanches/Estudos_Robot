*** Settings ***
Documentation    ttps://bulkan.github.io/robotframework-difflibrary/
Library          DiffLibrary
Library          OperatingSystem

*** Test Cases ***
Lendo arquivos e comparando os arquivos
    Lendo o conteúdo
    Compara arquivos

*** Keywords ***
Lendo o conteúdo
    ${PRIMEIRO_ARQ}          Get File          ./my_files/file_first.txt
    ${SEGUNDO_ARQ}           Get File          ./my_files/file_second.txt
    Log    ${PRIMEIRO_ARQ}
    Log    ${SEGUNDO_ARQ}

Compara arquivos
    Diff Files        ${PRIMEIRO_ARQ}        ${SEGUNDO_ARQ}       faild:True  