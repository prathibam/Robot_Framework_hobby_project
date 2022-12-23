*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
wait_testing
    open browser  ${url}    ${browser}
    maximize browser window
    click element  xpath:/html/body/div[4]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a
    select radio button      Gender     M
    ${speed}=   get selenium timeout
    log to console  ${speed}
    input text  name:FirstName  Prathiba
    set selenium timeout  10 seconds
    input text  name:LastName   Murali
    input text  name:Email  prathiba.m2012@gmail.com
    input text  name:Password   Tinku
    input text  name:ConfirmPassword    Tinku
    close all browsers


*** Keywords ***
