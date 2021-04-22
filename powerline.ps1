# Conditionally optional
Get-Help Set-ExecutionPolicy
Set-ExecutionPolicy [-ExecutionPolicy]

Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name PSReadLine -Scope CurrentUser -Force -SkipPublisherCheck

# Print the profile location
$profile
# Add these lines to $profile
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme paradox
