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
$lang.Add("ja-JP")

Set-WinUserLanguageList $lang -f
# 設定語言

reg add "HKCU\Control Panel\Mouse" /f /v MouseSensitivity /d 5
# 更改滑鼠靈敏度

winget uninstall --id=Google.Chrome -e --accept-source-agreements

winget install --id=Google.Chrome -e --accept-source-agreements # --force --accept-package-agreements
# 更新 Google Chrome

# winget install --id=Microsoft.Edge -e --accept-source-agreements
# 更新 Microsoft Edge

winget install --id=File-New-Project.EarTrumpet -e --accept-source-agreements
# 安裝 EarTrumpet

shutdown /l
# 登出使機碼變更生效