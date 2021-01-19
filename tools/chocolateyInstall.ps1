$ErrorActionPreference = 'Stop'

$packageName    = $env:ChocolateyPackageName
$installerType  = 'exe'
$url            = 'http://software.lsoft.net/KillDisk-Freeware-Setup.exe'
$silentArgs     = '/verysilent /norestart'
$checksum       = '01125D0363DF7E62DFFA8BE5BB022BA1B4FA6782697F336B7E13CB05EFD82048'
$checksumType   = 'sha256'
$validExitCodes = @(0)

$packageArgs = @{
  packageName    = $packageName
  fileType       = $installerType
  url            = $url
  url64bit       = $url
  silentArgs     = $silentArgs
  checksum       = $checksum
  checksum64     = $checksum
  checksumType   = $checksumType
  checksumType64 = $checksumType
  validExitCodes = $validExitCodes
}

Install-ChocolateyPackage @packageArgs