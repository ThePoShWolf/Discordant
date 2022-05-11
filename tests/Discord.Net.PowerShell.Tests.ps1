Describe 'Module-level tests' {
    
    $script:moduleName = (Get-ChildItem $PSScriptRoot\..\build).Name
    It 'The module imports successfully' {
        { Import-Module "$PSScriptRoot\..\build\$moduleName\$moduleName.psm1" -ErrorAction Stop } | Should -Not -Throw
    }

    It 'The module has an associated manifest' {
        Test-Path "$PSScriptRoot\..\build\$moduleName\$moduleName.psd1" | Should -Be $true
    }

    It 'The module passes all default PSScriptAnalyzer rules' {
        Invoke-ScriptAnalyzer -Path "$PSScriptRoot\..\build\$moduleName\$moduleName.psm1" | Should -HaveCount 0
    }
}