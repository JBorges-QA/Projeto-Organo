*** Settings ***
Library         SeleniumLibrary
Resource        setup_teardown.robot
Test Setup      Dado que eu preencha os campos do formulário
Test Teardown   Fechar o navegador

*** Variables ***


*** Test Cases ***


*** Keywords ***