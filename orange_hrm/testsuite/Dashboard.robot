*** Settings ***
Resource              ../keyword/pageLogin.robot
Suite Setup            Open Browser Chrome
Suite Teardown         Close Browser

*** Test Cases ***
Dashboard Admin
    Login Orange hrm    