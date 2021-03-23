# Don't know what this script does. I forgot why I wrote this. 
# If you know, please feel free to edit the doc.

Get-AppxPackage | ForEach-Object { 
    Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppxManifest.xml" -verbose 
}
