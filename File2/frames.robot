*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Testing_frames
    open browser  https://seleniumhq.github.io/selenium/docs/api/java/index     chrome
    click element  xpath:/html/body/header/nav/div[1]/div[2]/ul[1]/li[1]/a
    select frame  packageListFrame
    click link  org.openqa.selenium
    unselect frame
    sleep  3

    select frame  packageFrame
    click link  WebDriver
    unselect frame
    sleep  3

    select frame    classFrame
    click link  Help
    unselect frame
    sleep  3

    close browser




*** Keywords ***


