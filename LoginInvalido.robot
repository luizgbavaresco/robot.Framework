*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary


*** Variables ***
${Browser}  chrome
${URL}     https://www.movida.com.br/
${CPF}  05834877931
${Senha}  123


*** Test Cases ***
Teste01

    Open Browser  ${URL}  ${Browser}
    Click Element   xpath=//a[@class='btn dropdown-toggle hidden-sm hidden-xs']
    Wait Until Element is Visible  xpath=//*[@name="cpf"]
    Input Text   xpath=//*[@name="cpf"]  ${CPF}
    Input Text   xpath=//*[@name="senha"]  ${Senha}
    Click Button  xpath=//*[@id="login-button"]
    Wait Until Element is Visible  xpath=//p[contains(text(),'Usuário ou senha inválido(s)!')]
    Close Browser