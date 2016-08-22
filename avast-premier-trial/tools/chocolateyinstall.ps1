﻿
$ErrorActionPreference = 'Stop';


$packageName= 'avast-premier-trial'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://files.avast.com/iavs9x/avast_premier_antivirus_setup_online.exe'
$url64      = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE_MSI_OR_MSU'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/silent"
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'avast-premier-trial*'
  checksum      = ''
  checksumType  = 'md5'
  checksum64    = ''
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs


















