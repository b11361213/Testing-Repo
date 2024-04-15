# Testing-Repo

<!-- ### 2022/11/08
成功  Push 上 GitHub 喇!!! -->

ob'_'ov

```ps1
$install = Read-Host "Install Firefox? (y/n)"

$lang = New-WinUserLanguageList zh-TW; $lang.Add("en-US")
Set-WinUserLanguageList $lang -f

reg add "HKCU\Control Panel\Mouse" /f /v MouseSensitivity /d 5

try { winget install --id=Google.Chrome -e --accept-source-agreements; winget install --id=File-New-Project.EarTrumpet -e --accept-source-agreements }
catch { Write-Output "`n`"winget`" command are not support!" }

rm -r 'C:\tools\*.bat'
rm -r 'C:\Users\mcu\*.bat'

if ( $install -eq 'y') {
    wget -O C:/FirefoxSetup.exe "https://download.mozilla.org/?product=firefox-latest&os=win&lang=en-US"; Start-Process C:/FirefoxSetup.exe 
    
    do { $finished = Read-Host "Installation finished? (y)"; } until ( $finished -eq 'y' ) }

shutdown /l
```