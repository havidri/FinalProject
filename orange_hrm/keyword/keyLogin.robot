*** Settings ***
Documentation          A resource file with reusable keywords and variables.
Library                SeleniumLibrary

*** Keywords ***
Open Browser Chrome
    Open Browser                          browser=chrome
    Maximize Browser Window

Open website orange hrm
    Go To                                 https://opensource-demo.orangehrmlive.com/

Masukkan username
    [Arguments]    ${usrname}
    Input Text                            id:txtUsername        ${usrname}

Masukkan password
    [Arguments]    ${passwd}
    Input Text                            id:txtPassword        ${passwd}

Klik button Login
    Click Element                        id:btnLogin
    Wait Until Element Is Visible        //h1[contains(text(),'Dashboard')]

Validasi berhasil login
    Element Should Be Visible            //h1[contains(text(),'Dashboard')]