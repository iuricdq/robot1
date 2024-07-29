*** Settings ***
Documentation       Main

Library             Browser
Resource            ./actions.resource

*** Variables ***
${BASE_URL}         https://blogdoagi.com.br/
${BROWSER}          chromium
${IS_HEADLESS}      True

*** Keywords ***
Start Browser
    New Browser    browser=${BROWSER}    headless=${IS_HEADLESS}
    New Page       ${BASE_URL}

Finish Browser
    Take Screenshot    fullPage=true