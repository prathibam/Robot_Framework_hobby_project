*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
wait_testing
    open browser      http://www.google.com     ${browser}
    maximize browser window

    open browser      http://www.bing.com     ${browser}
    maximize browser window

    #close browser
    #closes the recent opened browser

    close all browsers
    #closess all the browsers


*** Keywords ***
