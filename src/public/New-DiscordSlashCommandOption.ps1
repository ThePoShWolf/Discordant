Function New-DiscordSlashCommandOption {
    [cmdletbinding()]
    param (
        [Parameter(
            Mandatory
        )]
        [ValidateNotNullOrEmpty()]
        [string]$Name,
        [string]$Description,
        [switch]$IsAutocomplete,
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