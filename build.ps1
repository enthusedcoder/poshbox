
$here = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Get-PackageProvider -Name NuGet -ForceBootstrap
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Install-module packagemanagement -allowclobber -force -SkipPublisherCheck
Install-module powershellget  -allowclobber -force -SkipPublisherCheck -AllowPrerelease
Install-module PsDeploy, BuildHelpers, PSake -Force -allowclobber
Install-Module Pester -AllowClobber -Force -SkipPublisherCheck
Import-Module Psake, BuildHelpers
Remove-module powershellget -force
Remove-module packagemanagement -force
import-module powershellget
Get-module powershellget
Register-PSResourceRepository -PSGallery
#. .\error.ps1


#exit ([int](-not $psake.build_success))
