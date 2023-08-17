*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome


*** Test Cases ***
LoginTest
    #create webdriver   chrome    executable_path="C:\Users\prath\Downloads\chromedriver_win32 (1)\chromedriver.exe"
    open browser    ${url}   ${browser}
    LogIntoApplication
    close browser


*** Keywords ***
LogIntoApplication
    click link      xpath://a[@class='ico-login']
    #click element   xpath://button[@class='button-1 login-button']
    input text      id:Email      prathiba.m2012@gmail.com
    input text      id:Password     Tinku123@123
    click element  xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button

