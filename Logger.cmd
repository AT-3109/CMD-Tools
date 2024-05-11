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
date /t >> hardware.txt
ipconfig /all >> hardware.txt
arp -a >> hardware.txt
getmac /fo csv >> hardware.txt
systeminfo >> hardware.txt
date /t >> connections.txt
netstat /a >> connections.txt
date /t >> processes.txt
tasklist >> processes.txt
