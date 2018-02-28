*** Settings ***

Library  AppiumLibrary

Documentation   demo for appium library

Force Tags  demo


*** Test Cases ***

test_demo
    [Documentation]  This script is to execute script on Mobile devices
    [Tags]  regression
    ${appium_server}=  set variable  http://127.0.0.1:4723/wd/hub
    log to console  ${appium_server}
    Open Application  ${appium_server}  platformName=Android  platformVersion=6.0.1  deviceName=84731b76  app=com.android.browser  automationName=appium  appPackage=com.android.browser  appActivity=AddBookmarkPage
    go to url  https://test.salesforce.com
    AppiumLibrary.capture page screenshot
    AppiumLibrary.input text  username  rn10@jjfsr.com.sit
    AppiumLibrary.input password  password  Start12345
    AppiumLibrary.click element  Login
    AppiumLibrary.capture page screenshot
    close application
