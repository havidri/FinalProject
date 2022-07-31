*** Settings ***
Resource              ../keyword/keyLogin.robot
Suite Setup            Open Browser Chrome
Suite Teardown         Close Browser


*** Variables ***
${usernames}        Admin
${passwords}        admin123

*** Test Cases ***
Login with valid username and password
    Open website orange hrm
    Masukkan username    ${usernames}
    Masukkan password    ${passwords}
    Klik button Login
    Validasi berhasil login