@echo off
java -jar proguard.jar @myconfig.pro
erase ..\ServerLauncher.jar
cd ..
ren ServerLauncher2.jar ServerLauncher.jar
pause >>nul