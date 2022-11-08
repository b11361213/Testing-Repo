# Set-ExecutionPolicy Bypass -f.ps1

reg add "HKCU\Control Panel\Mouse" /f /v MouseSensitivity /d 4

$lang = New-WinUserLanguageList zh-TW
$lang.Add("en-US")

Set-WinUserLanguageList $lang

shutdown /l