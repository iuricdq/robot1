*** Settings ***
Documentation       Camada de ações da funcionalidade de login

Library             Browser

*** Keywords ***

Quando pesquiso artigo com
    [Arguments]    ${artigo}    
    Click        xpath=//a[@aria-label='Link do ícone de pesquisa']//span[@class='ast-icon icon-search']//*[name()='svg']
    Fill Text    xpath=//input[@id='search-field']    ${artigo}
    Click        xpath=//a[@aria-label='Link do ícone de pesquisa']//span[@class='ast-icon icon-search']//*[name()='svg']

Então vejo no resultado da pesquisa  
  [Arguments]     ${resultadopesquisa} 
    Wait For Elements State    xpath=//div[@class='ast-row']   visible    5
     Get Text                   xpath=//div[@class='ast-row']    contains    ${resultadopesquisa}


Então não vejo registros no resultado da pesquisa
     Wait For Elements State    xpath=//p[contains(text(),'Lamentamos, mas nada foi encontrado para sua pesqu')]       visible    5
    #  Wait For Elements State    xpath=//div[@class='widget widget_search']//input[@id='search-field']        visible 5