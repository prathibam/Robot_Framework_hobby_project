*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Handling_alerts
   open browser  https://testautomationpractice.blogspot.com/  chrome
   click element  xpath://*[@id="HTML9"]/div[1]/button
   sleep    3
   #handle alert  accept
   #handle alert  leave
   handle alert  dismiss

   alert should be present  Press a button!
   alert should not be present  Press abutton!
