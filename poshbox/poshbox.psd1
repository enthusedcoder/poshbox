<#	
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2018 v5.5.155
	 Created on:   	11/18/2018 11:55 AM
	 Created by:   	whiggs
	 Organization: 	
	 Filename:     	poshbox.psd1
	 -------------------------------------------------------------------------
	 Module Manifest
	-------------------------------------------------------------------------
	 Module Name: poshbox
	===========================================================================
#>


@{	
	
	# Script module or binary module file associated with this manifest
	ModuleToProcess = 'poshbox.psm1'
	
	# Version number of this module.
	ModuleVersion = '1.0.50'
	
	# ID used to uniquely identify this module
	GUID = 'b5f27e48-d7aa-436c-9295-da6d15740404'
	
	# Author of this module
	Author = 'whiggs'
	
	# Company or vendor of this module
	CompanyName = 'NA'
	
	# Copyright statement for this module
	Copyright = '(c) 2018. All rights reserved.'
	
	# Description of the functionality provided by this module
	Description = 'This module will allow you to perform administrative actions in a box enterprise environment.'
	
	# Minimum version of the Windows PowerShell engine required by this module
	PowerShellVersion = '5.1'
	
	# Name of the Windows PowerShell host required by this module
	PowerShellHostName = ''
	
	# Minimum version of the Windows PowerShell host required by this module
	PowerShellHostVersion = ''
	
	# Minimum version of the .NET Framework required by this module
	DotNetFrameworkVersion = '2.0'
	
	# Minimum version of the common language runtime (CLR) required by this module
	CLRVersion = '2.0.50727'
	
	# Processor architecture (None, X86, Amd64, IA64) required by this module
	ProcessorArchitecture = 'None'
	
	# Modules that must be imported into the global environment prior to importing
	# this module
	RequiredModules = @()
	
	# Assemblies that must be loaded prior to importing this module
	#RequiredAssemblies	   = @("dotnet\Box.V2.dll", "dotnet\BouncyCastle.Crypto.dll", "dotnet\Microsoft.IdentityModel.JsonWebTokens.dll", "dotnet\Microsoft.IdentityModel.Logging.dll", "dotnet\Microsoft.IdentityModel.Tokens.dll", "dotnet\Newtonsoft.Json.dll", "dotnet\System.IdentityModel.Tokens.Jwt.dll")
	RequiredAssemblies	   = @()
	# Script files (.ps1) that are run in the caller's environment prior to
	# importing this module
	ScriptsToProcess = @()
	
	# Type files (.ps1xml) to be loaded when importing this module
	TypesToProcess = @()
	
	# Format files (.ps1xml) to be loaded when importing this module
	FormatsToProcess = @()
	
	# Modules to import as nested modules of the module specified in
	# ModuleToProcess
	NestedModules = @()
	
	# Functions to export from this module
	FunctionsToExport	   = @(
		'connect-box',
		'get-boxusers',
		'set-boxuserlogin',
		'new-boxuser',
		'new-boxemailalias',
		'remove-boxuser',
		'transfer-boxusercontent',
		'upload-boxfile',
		'remove-boxemailalias',
		'Get-boxemailalias',
		'Get-boxuserinfo',
		'invite-usertobox',
		'Get-boxuserinvite',
		'set-boxuser',
		'new-boxfolder',
		'get-boxfolderitems',
		'new-boxfoldersharelink',
		'copy-boxfolder',
		'remove-boxfolder',
		'copy-boxfile',
		'remove-boxfoldersharedlink',
		'get-boxfolderinfo',
		'get-boxfoldercollaborations',
		'Get-boxtrashedfolderitems',
		'get-trashedboxfolder',
		'remove-boxtrashfolder',
		'restore-trashedboxfolder',
		'set-boxfolderinfo',
		'get-boxcollections',
		'Get-boxcollectionitems',
		'addremove-boxcollectionsforfolder',
		'addremove-boxcollectionsforfile',
		'get-boxfileinfo',
		'new-boxcomment',
		'remove-boxcomment',
		'get-boxfilecomment',
		'Get-boxcommentinfo',
		'set-boxcomment',
		'get-boxenterpriseevents',
		'get-boxuserevents',
		'upload-boxfilenewversion',
		'new-boxfilesharelink',
		'remove-boxfile',
		'get-boxfileversions',
		'remove-boxoldfileversion',
		'remove-boxfilesharelink',
		'new-boxcollaborator',
		'Get-boxcollaborationinfo',
		'get-pendingboxcollaboration',
		'remove-boxcollaboration',
		'get-boxfilecollaborations',
		'get-boxfiledownloaduri',
		'get-boxfiletasks',
		'lock-boxfile',
		'get-boxfilelock',
		'get-boxfilepreview',
		'get-boxfilethumbnail',
		'get-trashedboxfile',
		'set-boxfileversion',
		'remove-boxtrashfile',
		'restore-boxtrashfile',
		'unlock-boxfile',
		'set-boxfileinfo',
		'get-allboxgroups',
		'new-boxgroup',
		'remove-boxgroup',
		'get-boxgroup',
		'get-boxgroupmembershipforgroup',
		'get-boxgroupmembershipforuser',
		'add-boxgroupmember',
		'remove-boxgroupmembership',
		'get-boxgroupmembership',
		'set-boxgroup',
		'set-boxgroupmembership',
		'new-boxlegalholdpolicy',
		'new-boxlegalholdpolicyassignment',
		'remove-boxlegalholdpolicy',
		'remove-boxlegalholdpolicyassignment',
		'get-boxlegalholdpolicyassignment',
		'get-boxlegalholdpolicy',
		'get-allboxlegalholdpolicies',
		'get-allboxlegalholdpolicyassignments',
		'get-allboxfileversionlegalholds',
		'get-boxfileversionlegalhold',
		'set-boxlegalholdpolicy',
		'get-allboxMetadataCascadePolicies',
		'get-boxmetadataCascadePolicy',
		'new-boxmetadatacascadepolicy',
		'remove-boxmetadatacascadepolicy',
		'apply-boxmetadatacascadepolicy',
		'get-allboxfoldermetadatatemplates',
		'get-allboxfilemetadatatemplates',
		'get-boxrecentitems',
		'find-boxitem',
		'get-boxshareditembyurl',
		'get-allboxwebhooks',
		'get-boxwebhook',
		'new-boxwebhook',
		'remove-boxwebhook',
		'set-boxwebhook',
		'get-boxtermsofservice',
		'get-boxtermsofservicebyid',
		'get-boxtermsofserviceuserstatuses',
		'new-boxtermsofservice',
		'set-boxtermsofservice',
		'new-boxtask',
		'remove-boxtask',
		'get-boxtask',
		'set-boxtask',
		'new-boxtaskassignment',
		'get-allboxtaskassignments',
		'get-boxtaskassignment',
		'set-boxtaskassignment',
		'remove-boxtaskassignment'
	)
	#For performance, list functions explicitly
	
	# Cmdlets to export from this module
	CmdletsToExport = '*' 
	
	# Variables to export from this module
	VariablesToExport = '*'
	
	# Aliases to export from this module
	AliasesToExport = '*' #For performance, list alias explicitly
	
	# DSC class resources to export from this module.
	#DSCResourcesToExport = ''
	
	# List of all modules packaged with this module
	ModuleList = @()
	
	# List of all files packaged with this module
	FileList = @()
	
	# Private data to pass to the module specified in ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
	PrivateData = @{
		
		#Support for PowerShellGet galleries.
		PSData = @{
			
			# Tags applied to this module. These help with module discovery in online galleries.
			Tags = @("Box")
			
			# A URL to the license for this module.
			LicenseUri = 'https://cdn.statically.io/gl/whiggs/poshbox/master/LICENSE'
			
			# A URL to the main website for this project.
			ProjectUri = 'https://github.com/enthusedcoder/poshbox'
			
			# A URL to an icon representing this module.
			IconUri = 'https://cdn.statically.io/gl/whiggs/chocolateypackages/master/icons/box.png'
			
			# ReleaseNotes of this module
			ReleaseNotes = 'v1.0.50 - Module is now compatable with powershell core'
			
		} # End of PSData hashtable
		
	} # End of PrivateData hashtable
}







