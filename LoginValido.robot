*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary


*** Variables ***
${Browser}  chrome
${URL}     https://www.movida.com.br/
${CPF}  05834877931
${Senha}  123456
${Invalido}

*** Test Cases ***
Teste Valido

    Open Browser  ${URL}  ${Browser}
    Click Element   xpath=//a[@class='btn dropdown-toggle hidden-sm hidden-xs']
    Wait Until Element is Visible  xpath=//*[@name="cpf"]
    Sleep  4
    Input Text   xpath=//*[@name="cpf"]  ${CPF}
    Sleep  4
    Input Text   xpath=//*[@name="senha"]  ${Senha}
    Click Button  xpath=//*[@id="login-button"]
    Wait Until Element is Visible  xpath=//span[@class='hidden-sm hidden-xs']
    Sleep  4
    Close Browser