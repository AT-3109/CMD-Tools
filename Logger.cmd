::setup
@echo off
color 02
title Logger

::screen text
echo Start logging?
pause
cls

::log process
mkdir output
cd output
ipconfig /all >> hardware.txt
systeminfo >> hardware.txt
netstat /a >> connections.txt
tasklist >> processes.txt
