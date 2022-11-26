# Set-ExecutionPolicy Bypass -f.ps1

$GCC_PATH = "C:\MinGW\bin"

reg add "HKCU\Control Panel\Mouse" /f /v MouseSensitivity /d 5
# 更改滑鼠靈敏度

$lang = New-WinUserLanguageList zh-TW
$lang.Add("en-US")
$lang.Add("ja-JP")

Set-WinUserLanguageList $lang
# 設定語言

$path = [System.Environment]::GetEnvironmentVariable("PATH", "user")
$add = $GCC_PATH
# user PATH: "user", system PATH: "machine"

[System.Environment]::SetEnvironmentVariable("PATH", $path + ";" + $add, "user")
# 新增 gcc 環境變數

shutdown /l
# 重新啟動使機碼變更生效