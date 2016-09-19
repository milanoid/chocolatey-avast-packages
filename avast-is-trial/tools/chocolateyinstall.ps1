
$ErrorActionPreference = 'Stop';


$packageName= 'avast-is-trial'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://files.avast.com/iavs9x/avast_internet_security_setup_online.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs    = "/silent"
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'avast-is-trial*'
  checksum      = '0cf7b7af3e7632fc1dc49fcb6f6d2f3c'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs


















