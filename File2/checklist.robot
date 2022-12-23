*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://www.amazon.com/
${browser}      chrome
${search}       id:twotabsearchtextbox

*** Test Cases ***
testing_Btn
    #create webdriver   chrome    executable_path="C:\Users\prath\Downloads\chromedriver_win32 (1)\chromedriver.exe"
    open browser   ${url}        ${browser}
    maximize browser window
    checklist_testing
    close browser

*** Keywords ***
checklist_testing
    input text  ${search}      pampers
    click element  id:nav-search-submit-button
    click element  id:a-autoid-0-announce
    sleep   3
    #select from list by index   id:s-result-sort-select_3   3
    click element  xpath://*[@id="s-result-sort-select_3"]
    sleep  3