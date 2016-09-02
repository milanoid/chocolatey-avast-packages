
$ErrorActionPreference = 'Stop';


$packageName= 'avast-premier-trial'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://files.avast.com/iavs9x/avast_premier_antivirus_setup_online.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  
  silentArgs    = "/silent"
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'avast-premier-trial*'
  checksum      = 'b6e6fad911f99b82bf177954930deabb'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs


















