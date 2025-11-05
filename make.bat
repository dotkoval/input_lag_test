@echo off

echo [33m=== REMOVING ARTIFACTS ===[0m
del /s %~dp0\input_lag_test.tap
del /s %~dp0\input_lag_test.sna

echo [33m=== BUILDING ZXPROJECT ===[0m
C:\ZX\Projects\tools\sjasmplus\sjasmplus.exe --msg=war --sld=input_lag_test.sld %~dp0\src\input_lag_test.a80
