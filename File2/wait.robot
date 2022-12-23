*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
wait_testing
    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser  ${url}    ${browser}
    maximize browser window
    click element  xpath:/html/body/div[4]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a
    wait until page contains     Register
    sleep   3
    select radio button      Gender     M
    ${speed}=   get selenium speed
    log to console  ${speed}
    input text  name:FirstName  Prathiba
    set selenium speed  3 seconds
    input text  name:LastName   Murali
    input text  name:Email  prathiba.m2012@gmail.com
    input text  name:Password   Tinku
    input text  name:ConfirmPassword    Tinku
    ${speed}=   get selenium speed
    log to console  ${speed}

    close all browsers


*** Keywords ***
