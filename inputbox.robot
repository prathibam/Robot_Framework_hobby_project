*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome


*** Test Cases ***
TestingInputBox
    open browser    ${url}   ${browser}
    maximize browser window
    title should be  nopCommerce demo store
    click link  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    ${email_text}   set variable  id:Email
    element should be visible  ${email_text}
    element should be enabled  ${email_text}
    input text  ${email_text}   prathiba.m
    sleep  5
    clear element text  ${email_text}
    sleep   3
    close browser

*** Keywords ***
