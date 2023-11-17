# Testing-Repo

<!-- ### 2022/11/08
成功  Push 上 GitHub 喇!!! -->

ob'_'ov

```ps1
$GCC_PATH = "C:\MinGW\bin"
$SQLITE_PATH = "C:\SQLite"

$path = [System.Environment]::GetEnvironmentVariable("PATH", "user")

[System.Environment]::SetEnvironmentVariable("PATH", $path + ";" + $SQLITE_PATH + ";" + $GCC_PATH, "user")


$lang = New-WinUserLanguageList zh-TW; $lang.Add("en-US"); $lang.Add("ja-JP"); Set-WinUserLanguageList $lang -f

try { Install-Language en-US -ErrorAction Stop; Install-Language ja-JP -ErrorAction Stop }
catch { Write-Output "`n`"Install-Language`" command are not support!" }

reg add "HKCU\Control Panel\Mouse" /f /v MouseSensitivity /d 5

try { winget install --id=Google.Chrome -e --accept-source-agreements; winget install --id=File-New-Project.EarTrumpet -e --accept-source-agreements }
catch { Write-Output "`n`"winget`" command are not support!" }

rm -r 'C:\tools\*.bat'

shutdown /l
```