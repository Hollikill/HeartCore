@echo off
set buildfolder=%CD%\temp
mkdir %buildfolder%
"C:\Program Files\7-zip\7z.exe" a -tzip "%buildfolder%\heartcoredata.zip" "%Userprofile%\Documents\GitHub\HeartCore\source\heartcoredata\*"
"C:\Program Files\7-zip\7z.exe" a -tzip "%buildfolder%\heartcoretex.zip" "%Userprofile%\Documents\GitHub\HeartCore\source\heartcoretex\*"
xcopy /e /y /q "%Userprofile%\Documents\GitHub\HeartCore\source\heartcore" "%buildfolder%"
cls
set /p input="zip-name: heartcore v"
"C:\Program Files\7-zip\7z.exe" a -tzip "%Userprofile%\Documents\GitHub\HeartCore\releases\main\heartcore v%input%.zip" "%buildfolder%\*"
rd /s /q %buildfolder%