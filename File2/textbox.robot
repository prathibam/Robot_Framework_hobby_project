*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://www.amazon.com/
${browser}      chrome
${search}       id:twotabsearchtextbox


*** Test Cases ***
testingtextbox
    open browser   ${url}        ${browser}
    maximize browser window
    key1
    close browser

*** Keywords ***
key1
    element should be enabled   ${search}
    element should be visible   ${search}
    input text  ${search}      pencil
    sleep  2
    clear element text  ${search}
