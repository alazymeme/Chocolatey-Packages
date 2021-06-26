$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://github.com/Chatterino/chatterino2/releases/download/nightly-build/chatterino-windows-x86-64.zip'
$packagename  = 'Chatterino'

Get-ChocolateyUnzip -FileFullPath "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\\chatterino-fortnightly.zip" -Destination "C:\Program Files\Chatterino" -PackageName "Chatterino"
Install-ChocolateyShortcut -ShortcutFilePath "$env:USERPROFILE\Desktop\Chatterino.lnk" -TargetPath "C:\Program Files\Chatterino\chatterino.exe"
