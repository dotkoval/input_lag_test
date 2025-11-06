@echo off

mkdir builds\loader

echo [33m=== REMOVING ARTIFACTS ===[0m
del /s/f/q %~dp0\builds\loader\*.*
del /s/f/q %~dp0\builds\*.*

echo [33m=== BUILDING ZXPROJECT ===[0m
sjasmplus.exe --msg=war src/input_lag_test.a80
sjasmplus.exe --msg=war src/loader.a80
