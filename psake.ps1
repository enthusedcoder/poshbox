properties {
    $basedir = $PSScriptRoot
  $Timestamp = Get-date -uformat "%Y%m%d-%H%M%S"
	$PSVersion = $PSVersionTable.PSVersion.Major
	$TestFile = "TestResults_$env:BHProjectName`_$TimeStamp.xml"
	$lines = '-----------------------------------------------------------------------'
}

Task default -depends deploy # commit captureimage

task modifyversion {
  $mod = Test-ModuleManifest "$env:APPVEYOR_BUILD_FOLDER\module\poshbox.psd1"
  [System.Version]$verob = $mod.Version
  [System.Version]$newver = "$($verob.Major).$($verob.Minor).$env:APPVEYOR_BUILD_NUMBER.$($verob.Revision)"
  remove-module powershellget -Force
  Import-module powershellget -Force
  Update-ModuleManifest -Path "$env:APPVEYOR_BUILD_FOLDER\module\poshbox.psd1" -ModuleVersion $newver
  Test-ModuleManifest "$env:APPVEYOR_BUILD_FOLDER\module\poshbox.psd1"
}

task deploy {
    Publish-PSResource -Path "$env:APPVEYOR_BUILD_FOLDER\poshbox" -APIKey $env:API_KEY -ErrorAction Stop
}

task commit -depends deploy {
    Set-Location "$env:APPVEYOR_BUILD_FOLDER"
    . git remote set-url origin https://whiggs:uY-LrTokNy4Pr_hy2bLV@gitlab.com/whiggs/poshbox.git
    . git add -A
    . git commit -am "update module version"
    . git push
}