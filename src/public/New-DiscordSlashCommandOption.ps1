Function New-DiscordSlashCommandOption {
    [OutputType([Discord.SlashCommandOptionBuilder])]
    [cmdletbinding()]
    param (
        [Parameter(
            Mandatory
        )]
        [ValidateNotNullOrEmpty()]
        [string]$Name,
        [string]$Description,
        [switch]$IsAutocomplete,
        [switch]$Required,
        [hashtable]$Choices,
        [Discord.ApplicationCommandOptionType]$Type

    )
    $co = [Discord.SlashCommandOptionBuilder]::new()

    $co.Name = $Name

    if ($PSBoundParameters.Keys -contains 'Description') {
        $co.Description = $Description
    }

    if ($PSBoundParameters.Keys -contains 'IsAutocomplete') {
        $co.IsAutocomplete = $IsAutocomplete.IsPresent
    }

    if ($Required.IsPresent) {
        $co.IsRequired = $true
    }

    if ($PSBoundParameters.Keys -contains 'Type') {
        $co.Type = $Type
    }

    if ($PSBoundParameters.Keys -contains 'Choices') {
        foreach ($key in $Choices.Keys) {
            $co.AddChoice($key, $Choices[$key]) | Out-Null
        }
    }

    $co
}