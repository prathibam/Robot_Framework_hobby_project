*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://www.amazon.com/
${browser}      chrome

*** Test Cases ***
LoginTest
    #create webdriver   chrome    executable_path="C:\Users\prath\Downloads\chromedriver_win32 (1)\chromedriver.exe"
    open browser   ${url}        ${browser}
    key1
    close browser

*** Keywords ***
key1
    click element  xpath://*[@id="nav-link-accountList-nav-line-1"]
    input text  id:ap_email         prathiba.m2012@gmail.com
    click element  id:continue
    input text  id:ap_password      Tinku123@123
    click element  id:signInSubmit

