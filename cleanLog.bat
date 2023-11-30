@echo off
C:\Windows\System32\taskkill /f /im GameCenter.exe
C:\Windows\System32\taskkill /f /im Game.exe
ping 127.0.0.1 -n 6 > nul
del / f / s / q "%USERPROFILE%\Saved Games\My Games\Warface\ProfileItems_*.xml
del / f / s / q "%USERPROFILE%\Saved Games\My Games\Warface\modelscache\*.*
del / f / s / q "%USERPROFILE%\Saved Games\My Games\Warface\user*.cfg
del / f / s / q "B:\GameCenter\Warface\*.log
del / f / s / q "B:\GameCenter\Warface\*.txt
del / f / s / q "B:\GameCenter\Warface\LogBackups*.*
del / f / s / q "%USERPROFILE%\AppData\Local\GameCenter\*.sig
del / f / s / q "%USERPROFILE%\AppData\Local\GameCenter\*.log
del / f / s / q "%USERPROFILE%\AppData\Local\GameCenter\*.trnt
del / f / s / q "%USERPROFILE%\AppData\Local\Temp\*.*
del / f / s / q "%USERPROFILE%\AppData\Local\GameCenter\*.dmp
del / f / s / q "%USERPROFILE%\AppData\Local\GameCenter\Except\*.*
del / f / s / q "%USERPROFILE%\AppData\Local\GameCenter\Masks\*.*