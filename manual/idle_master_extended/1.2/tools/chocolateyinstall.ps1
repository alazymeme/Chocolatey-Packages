$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'idle-master-extended.zip'
$packagename  = 'Idle Master Extended'

Get-ChocolateyUnzip -FileFullPath "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\\idle-master-extended.zip" -Destination "C:\Program Files\Idle Master Extended" -PackageName "Idle Master Extended"
Install-ChocolateyShortcut -ShortcutFilePath "$env:USERPROFILE\Desktop\Idle Master Extended.lnk" -TargetPath "C:\Program Files\Idle Master Extended\IdleMaster.exe"