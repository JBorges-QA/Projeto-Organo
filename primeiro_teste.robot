*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                    http://localhost:3000/
${CAMPO_NOME}             id:form-nome
${CAMPO_CARGO}            id:form-cargo
${CAMPO_IMAGEM}           id:form-imagem
${CAMPO_TIME}             class:lista-suspensa
${BOTAO_CARD}             id:form-botao
${OPCAO_PROGRAMACAO}      //option[contains(.,'Programação')]
${OPCAO_FRONT}            //option[contains(.,'Front-End')]
${OPCAO_DADOS}            //option[contains(.,'Data Science')]
${OPCAO_DEVOPS}           //option[contains(.,'Devops')] 
${OPCAO_UX}               //option[contains(.,'UX e Design')]
${OPCAO_MOBILE}           //option[contains(.,'Mobile')]
${OPCAO_INOVACAO}         //option[contains(.,'Inovação e Gestão')]

*** Test Cases ***
Verificar se ao preencher os campos do formulário corretamente os dados são inseridos na lista e se um novo card é criado no time esperado
    Open Browser   url=http://localhost:3000/   browser=Chrome
    Maximize Browser Window
    Input Text    id:form-nome      Akemi
    Input Text    id:form-cargo     Desenvolvedora
    Input Text    id:form-imagem    https://shorturl.at/h5l8x
    Click Element    class:lista-suspensa
    Click Element    //option[contains(.,'Programação')]
    Sleep  10s
    Click Element    id:form-botao
    Element Should Be Visible    class:colaborador
    Sleep    5s

*** Keywords ***
