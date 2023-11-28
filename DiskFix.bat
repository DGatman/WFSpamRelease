@echo off
setlocal enabledelayedexpansion

set "baseKey=HKLM\SYSTEM\CurrentControlSet\Services\disk\Enum"
set "valueName=0"
set "characters=abcdefghijklmnopqrstuvwxyz0123456789"

set "randomValue="
for /l %%i in (1,1,7) do (
    set /a "randIndex=!random! %% 62"
    for %%n in (!randIndex!) do (
        set "randomChar=!characters:~%%n,1!"
        set "randomValue=!randomValue!!randomChar!"
    )
)

set "newValue=SCSI\Disk&Ven_NVMe&Prod_KINGSTON_SNV2S10\5&1!randomValue!&0&000000"

reg add "%baseKey%" /v "%valueName%" /t REG_SZ /d "%newValue%" /f

echo Value changed to: %newValue%

setlocal enabledelayedexpansion

set "baseKey=HKLM\SYSTEM\CurrentControlSet\Services\disk\Enum"
set "valueName=1"
set "characters=abcdefghijklmnopqrstuvwxyz0123456789"

set "randomValue="
for /l %%i in (1,1,7) do (
    set /a "randIndex=!random! %% 62"
    for %%n in (!randIndex!) do (
        set "randomChar=!characters:~%%n,1!"
        set "randomValue=!randomValue!!randomChar!"
    )
)

set "newValue=SCSI\Disk&Ven_NVMe&Prod_KINGSTON_SNV2S10\5&1!randomValue!&0&000000"

reg add "%baseKey%" /v "%valueName%" /t REG_SZ /d "%newValue%" /f

echo Value changed to: %newValue%

reg add "HKLM\SYSTEM\ControlSet001\Enum\SCSI\Disk&Ven_VMware&Prod_Virtual_disk\5&15892cb7&0&000000" /v FriendlyName /t REG_SZ /d "KINGSTON SNV2S120G" /f

setlocal enabledelayedexpansion

set "baseKey=HKLM\SYSTEM\ControlSet001\Enum\SCSI\Disk&Ven_VMware&Prod_Virtual_disk\5&15892cb7&0&000000"
set "valueName=HardwareID"
set "newValue=SCSI\DiskKINGSTON__KINGSTON_disk____2.0 SCSI\DiskKINGSTON__KINGSTON_disk____SCSI\DiskKINGSTON__SCSI\KINGSTON__KINGSTON_disk____2KINGSTON__KINGSTON_disk____2GenDisk"

reg add "%baseKey%" /v "%valueName%" /t REG_SZ /d "%newValue%" /f

echo Value changed to: %newValue%

reg add "HKLM\SYSTEM\ControlSet001\Enum\SCSI\Disk&Ven_VMware&Prod_Virtual_disk\5&1ec51bf7&0&000000" /v FriendlyName /t REG_SZ /d "KINGSTON SNV2S60G" /f

setlocal enabledelayedexpansion

set "baseKey=HKLM\SYSTEM\ControlSet001\Enum\SCSI\Disk&Ven_VMware&Prod_Virtual_disk\5&1ec51bf7&0&000000"
set "valueName=HardwareID"
set "newValue=SCSI\DiskKINGSTON__KINGSTON_disk____2.0 SCSI\DiskKINGSTON__KINGSTON_disk____SCSI\DiskKINGSTON__SCSI\KINGSTON__KINGSTON_disk____2KINGSTON__KINGSTON_disk____2GenDisk"

reg add "%baseKey%" /v "%valueName%" /t REG_SZ /d "%newValue%" /f

echo Value changed to: %newValue%
