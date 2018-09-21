@echo off
set /p filetitle=Filename:
rem 将空格替换成-
set filetitlewithdash=%filetitle: =-%
set filename=%DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2%-%filetitlewithdash%.md

set /a colorR=%random%%%256
set /a colorG=%random%%%256
set /a colorB=%random%%%256

set filefullpath=%cd%\%filename%
echo --->>%filefullpath%
echo layout: post>>%filefullpath%
echo title: ''>>%filefullpath%
rem echo date: %DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2% %TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%>>%filefullpath%
echo date: %DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2%>>%filefullpath%
echo author: Margaret>>%filefullpath%
echo color: rgb(%colorR%,%colorG%,%colorB%)>>%filefullpath%
echo cover: ''../assets/image/titlepage/''>>%filefullpath%
echo tags: blog>>%filefullpath%
echo --->>%filefullpath%
echo.>>%filefullpath%
rem ^将>显示为正常的输出字符串
echo ^>>>%filefullpath%