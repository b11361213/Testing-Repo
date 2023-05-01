# Set-ExecutionPolicy Bypass -f.ps1

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

# winget install Google.Chrome
# 更新 Google Chrome

winget install Microsoft.Edge --force
# 更新 Microsoft Edge

shutdown /l
# 登出使機碼變更生效