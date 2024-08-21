<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2021 v5.8.184
	 Created on:   	2/11/2021 8:53 AM
	 Created by:   	Justin DeBusk
	 Organization: 	Atlas Network Services, LLC.
	 Filename:     	Disable Nuance Text Converter.ps1
	===========================================================================
	.DESCRIPTION
		This script checks to see if SSPDFCG_x64.cnv exsists and if it does it renames it to SSPDFCG_x64.Old to disable Nuance Text Converter.
#>



Write-Host "`n Checking to see if Nuance Text Converter is installed."

if (Test-Path "C:\Program Files (x86)\Common Files\Microsoft Shared\TextConv\SSPDFCG_x64.cnv")
{
	Write-Host "`n Disabling Nuance Text Converter."
	Rename-Item -Path "C:\Program Files (x86)\Common Files\Microsoft Shared\TextConv\SSPDFCG_x64.cnv" -NewName "C:\Program Files (x86)\Common Files\Microsoft Shared\TextConv\SSPDFCG_x64.old"
	Write-Host "`n Nuance Text Converter had been disabled."
}
else
{
	Write-Host "`n Nuance Text Converter doesn't appear to be installed on this computer."
}

sleep 10