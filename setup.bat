@ECHO OFF
CLS
ECHO ============
ECHO 1.generate translations
ECHO 2.run build runner with delete conflicting
ECHO 3.flutter pub get
ECHO 4.flutter clean
ECHO.

CHOICE /C 1234 /M "Enter your choice:  " 

IF ERRORLEVEL 4 GOTO fvm_flutter_clean
IF ERRORLEVEL 3 GOTO fvm_flutter_pub_get
IF ERRORLEVEL 2 GOTO run_build_runner_with_delete_conflicting
IF ERRORLEVEL 1 GOTO generate

:generate
ECHO ============
get generate locales assets/locales
GOTO End

:run_build_runner_with_delete_conflicting
ECHO ============
fvm flutter pub run build_runner build --delete-conflicting-outputs
GOTO End

:fvm_flutter_pub_get
ECHO ============
fvm flutter pub get
GOTO End

:fvm_flutter_clean
ECHO ============
fvm flutter clean
GOTO End
:End