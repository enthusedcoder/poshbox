
$here = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Get-PackageProvider -Name NuGet -ForceBootstrap
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Install-module packagemanagement -allowclobber -force -SkipPublisherCheck
Install-module powershellget -allowclobber -force -SkipPublisherCheck -AllowPrerelease
Install-module Microsoft.PowerShell.PSResourceGet -allowclobber -force -SkipPublisherCheck -AllowPrerelease
Remove-module powershellget -force
Remove-module packagemanagement -force
Import-module Microsoft.PowerShell.PSResourceGet
Register-PSResourceRepository -PSGallery
Install-PSResource PsDeploy, BuildHelpers, PSake
Install-PSResource Pester
Import-Module Psake, BuildHelpers

#. .\error.ps1


#exit ([int](-not $psake.build_success))
