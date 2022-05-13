Function New-DiscordSlashCommand {
    [cmdletbinding(
        DefaultParameterSetName = 'byId'
    )]
    param (
        [Parameter(
            Mandatory
        )]
        [ValidateNotNullOrEmpty()]
        [string]$Name,
        [string]$Description,
        [Alias('CommandOptions')]
        [Discord.SlashCommandOptionBuilder[]]$Options
    )
    $cb = [Discord.SlashCommandBuilder]::new()
    $cb.Name = $Name
    $cb.Description = $Description

    if ($PSBoundParameters.Keys -contains 'Options') {
        $cb.Options = $Options
    }

    $cb
}