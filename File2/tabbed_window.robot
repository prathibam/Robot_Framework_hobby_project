*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      http://demo.automationtesting.in/Windows.html
${browser}      chrome

*** Test Cases ***
TC1
    open browser    ${url}      ${browser}
    maximize browser window
    click element       xpath://*[@id="Tabbed"]/a/button
    select window  title=Selenium
    click element   xpath://*[@id="main_navbar"]/ul/li[6]/a/span
    sleep   3
    close all browsers


*** Keywords ***
