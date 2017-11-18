*** Settings ***
Documentation  This test suite is to experiment
Library  Selenium2Library
Library  C:/Users/Rohith/PycharmProjects/ro-demo/Resources/common_resources.robot


*** Test Cases ***
Open browser to login page
    Login to salesforce

*** Keywords ***

Login to salesforce
    Open Browser  ${URL}   ${BROWSER}
    title should be  Login | Salesforce
    Close Browser