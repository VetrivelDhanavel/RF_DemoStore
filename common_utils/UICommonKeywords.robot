*** Settings ***
Documentation    Common Keywords for UI

Library    Collections
Library    SeleniumLibrary

Resource   ../testdata/CommonVariables.robot

*** Keywords ***
Launch Browser

     Open Browser  http://demostore.supersqa.com/  chrome
     Maximize Browser Window
