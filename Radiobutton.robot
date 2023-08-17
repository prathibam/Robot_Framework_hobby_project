*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.ironspider.ca/forms/checkradio.htm
${browser}  chrome


*** Test Cases ***
Testing radio butoons and checkboxes
    open browser  ${url}    ${browser}
    maximize browser window
    select radio button  browser     IE
    close browser
*** Keywords ***
