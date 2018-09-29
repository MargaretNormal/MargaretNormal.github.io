---
layout: post
title: '一些小脚本'
date: 2018-09-29
author: Margaret
color: rgb(153,62,144)
cover: ''../assets/image/titlepage/''
tags: log cmd AutoHotkey
---

> 一些小脚本，记录一下


### 自动创建博客内容

- rem所在行是注释
- 使用windows自带的bat脚本
- bat脚本使用`.bat`为文件名结尾
- `@echo off`用于关闭回显，如果想看具体执行的结果的，可以使用rem注释掉这行

```
@echo off
rem  由用户输入文件名
set /p filetitle=Filename:
rem 将空格替换成-
set filetitlewithdash=%filetitle: =-%
rem 生成相关的md文件文件名，格式为 year-month-day[-以-分割的文件名].md
rem 其实可以没有文件名，只用 日期.md 作为文件的。但是不知道重复日期会不会有问题
set filename=%DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2%-%filetitlewithdash%.md

rem 生成随机颜色值，%%%是求余符号
set /a colorR=%random%%%256
set /a colorG=%random%%%256
set /a colorB=%random%%%256

rem 绝对路径，%cd%是当前文件夹路径
set filefullpath=%cd%\%filename%
rem 写入相关的头格式，注意冒号后面有空格
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
rem 输出空行，这个空行必须存在
echo.>>%filefullpath%
rem ^将>显示为正常的输出字符串， 输出引用行
echo ^> >>%filefullpath%
```


### SVN和VS项目自动更新和编译

- SVN安装时必须安装命令行工具(Command-line tools)

```
@ echo off

rem UPDATE all the SVN working copy
svn update [需要更新的文件夹路径]

rem rebuild Visual Studio sln
rem 将devenv路径加入path路径中。这样子加入的话在关闭命令行窗口时，会失效
set path=%path%;D:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE
rem 重新编译sln项目，使用的是上一次的配置
devenv [project_file].sln /rebuild

rem 暂停窗口，可以查看之前的输出。和echo搭配起来调试
pause
```


### QQ自动登陆

- QQ开机自启动不能自动登录
- 脚本使用AutoHotKey
- 写完觉得没什么卵用，QQ开机自动登录中账号以QQ团队的技术根本不可能做不到，所以不这么做应该是基于安全原因

```
; 运行QQ
run [QQ安装目录和文件名].exe
; 等待QQ窗口打开
WinWait, TIM
; 已有账号密码，发送Enter键到窗口
Send {Enter}
```