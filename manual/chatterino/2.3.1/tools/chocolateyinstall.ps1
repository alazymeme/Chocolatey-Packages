$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'chatterino-installer.exe'
$packagename  = 'Chatterino'

$packageArgs = @{
  packageName   = $packagename
  fileType      = 'EXE'
  softwareName  = 'Chatterino*'
  file			= $fileLocation
  validExitCodes= @(0)
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS="!vcredist"'
  checksum      = '6E7EEC8C1CCBB633127E6F272C6873453D9F0892FD554A5B967A02551E7919CC'
  checksumType  = 'sha256'
}

Install-ChocolateyInstallPackage @packageArgs