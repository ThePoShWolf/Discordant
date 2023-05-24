<#
    Code in this file will be added to the end of the .psm1. For example,
    you should set variables or other environment settings here.
#>

# Load Assemblies
$libPath = Join-Path $PSScriptRoot lib
Get-ChildItem $libPath -Filter *.dll | ForEach-Object {
    Add-Type -Path $_.FullName
}