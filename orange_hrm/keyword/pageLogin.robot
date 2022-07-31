*** Settings ***
Resource              ../keyword/keyLogin.robot

*** Keywords *** ***
Login Orange hrm
    Open website orange hrm
    Masukkan username    Admin
    Masukkan password    admin123
    Klik button Login
    Validasi berhasil login