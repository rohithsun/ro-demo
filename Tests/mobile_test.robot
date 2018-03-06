*** Settings ***

Library  AppiumLibrary

Documentation   demo for appium library

Force Tags      demo


*** Test Cases ***

test_demo
    [Documentation]  This script is to execute script on Mobile devices
    [Tags]  regression
    ${appium_server}=  set variable  http://127.0.0.1:4723/wd/hub
    log to console  ${appium_server}
    Open Application  ${appium_server}  platformName=Android  platformVersion=7.0  deviceName=84731b76  automationName=UiAutomator2  browserName=Chrome
    go to url  https://test.salesforce.com
    wait until page contains element  username  10s
    AppiumLibrary.capture page screenshot
    AppiumLibrary.input text  username  rn10@jjfsr.com.sit
    AppiumLibrary.input password  password  Start12345
    AppiumLibrary.click element  Login
    wait until page contains element  Home  50s
    AppiumLibrary.capture page screenshot
    close application
