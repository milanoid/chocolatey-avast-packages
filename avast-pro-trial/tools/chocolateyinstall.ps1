
$ErrorActionPreference = 'Stop';


$packageName= 'avast-pro-trial'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://files.avast.com/iavs9x/avast_pro_antivirus_setup_online.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  
  silentArgs    = "/silent"
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'avast-pro-trial*'
  checksum      = '4664e40cd0f534422c96d650e738c469'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs


















