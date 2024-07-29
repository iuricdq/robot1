*** Settings ***
Documentation       Suíte de testes de login

Resource            ../resources/base.resource

Test Setup          Start Browser
Test Teardown       Finish Browser

*** Test Cases ***

CENÁRIO 01: Pesquisa artigo com titulo completo no blog do agi
    [Tags]    pesquisa
    Quando pesquiso artigo com  Agibank se prepara para transacionar via Drex
    Então vejo no resultado da pesquisa  Agibank se prepara para transacionar via Drex

CENÁRIO 02: Pesquisa artigo com titulo incompleto no blog do agi
    [Tags]    pesquisa
    Quando pesquiso artigo com  Agibank se prepara
    Então vejo no resultado da pesquisa  Agibank se prepara para transacionar via Drex

CENÁRIO 03: Pesquisa artigo com palavra presente no texto da noticia no blog do agi
    [Tags]    pesquisa
    Quando pesquiso artigo com  TPFs
    Então vejo no resultado da pesquisa  Agibank se prepara para transacionar via Drex

CENÁRIO 04: Pesquisa artigo inexistente no blog do agi
    [Tags]    pesquisa
    Quando pesquiso artigo com  sdfsdfsdfdsfdgh
    Então não vejo registros no resultado da pesquisa

