@echo off
title Dead Estate Chinese Patch
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0files\install.ps1" install zh_cn
if errorlevel 1 pause
