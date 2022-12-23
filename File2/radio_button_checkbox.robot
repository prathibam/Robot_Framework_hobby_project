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
    Radio_button_testing
    close browser

*** Keywords ***
Radio_button_testing
    input text  ${search}      pampers
    click element  id:nav-search-submit-button
    click element  xpath://*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[3]/div/div/div/div/div/div/div[3]/div[1]/h2
    click element  xpath://*[@id="newAccordionRow"]/div/div[1]/i

    #select radio button  xpath://*[@id="newAccordionRow"]/div/div[1]/i     One-time purchase:
    #select checkbox  id:p_n_feature_seven_browse-bin/24069095011
check_box_testing
    input text  ${search}      pampers
    click element  id:nav-search-submit-button

    click element  xpath://*[@id="p_89/Pampers"]/span/a/div/label/i
    sleep  3
    click element  xpath://*[@id="p_n_feature_seven_browse-bin/24069095011"]/span/a/div/label/i
    sleep   3

