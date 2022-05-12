Function New-DiscordGlobalCommand {
    [cmdletbinding()]
    param (
        [Discord.ApplicationCommandType]$Type = 'Slash',
        [Parameter(
            Mandatory
        )]
        [string]$Name,
        [Parameter(
            Mandatory
        )]
        [string]$Description
    )

    switch ($Type) {
        'Slash' {
            $cb = [Discord.SlashCommandBuilder]::new()
            $cb.Name = $Name
            $cb.Description = $Description
        }
        default {
            Throw "Command type '$Type' not yet implemented in module."
        }
    }
    $DiscordClient.CreateGlobalApplicationCommand($cb.Build()).Wait().Result
}