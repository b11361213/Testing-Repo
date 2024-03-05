# Set-ExecutionPolicy Bypass -f.ps1

# winstall 搜尋網站
# [winstall - GUI for Windows Package Manager](https://winstall.app/)

# winget Document
# [install 命令 | Microsoft Learn](https://learn.microsoft.com/zh-tw/windows/package-manager/winget/install)

$GCC_PATH = "C:\MinGW\bin"
$SQLITE_PATH = "C:\SQLite"

$path = [System.Environment]::GetEnvironmentVariable("PATH", "user")
# user PATH: "user", system PATH: "machine"

[System.Environment]::SetEnvironmentVariable("PATH", $path + ";" + $SQLITE_PATH + ";" + $GCC_PATH, "user")
# 新增 SQLite 環境變數與 GCC 環境變數


$lang = New-WinUserLanguageList zh-TW
$lang.Add("en-US")
# $lang.Add("ja-JP")

Set-WinUserLanguageList $lang -f

# try {
#     Install-Language en-US -ErrorAction Stop
#     Install-Language ja-JP -ErrorAction Stop
#     # 設定語言
# }
# catch {
#     Write-Output "`n`"Install-Language`" command are not support!"
#     # Write-Output $Error[0]
# }

reg add "HKCU\Control Panel\Mouse" /f /v MouseSensitivity /d 5
# 更改滑鼠靈敏度

try {
    winget install --id=Google.Chrome -e --accept-source-agreements
    # 更新 Google Chrome

    winget install --id=File-New-Project.EarTrumpet -e --accept-source-agreements
    # 安裝 EarTrumpet
}
catch {
    Write-Output "`n`"winget`" command are not support!"
    # Write-Output $Error[0]
}

rm -r 'C:\tools\*.bat'
rm -r 'C:\Users\mcu\*.bat'

shutdown /l
# 登出使機碼變更生效