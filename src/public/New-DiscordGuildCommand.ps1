Function New-DiscordGuildCommand {
    [cmdletbinding(
        DefaultParameterSetName = 'byId'
    )]
    param (
        [Parameter(
            Mandatory,
            ParameterSetName = 'byId'
        )]
        [UInt64]$GuildId,
        [Parameter(
            Mandatory,
            ParameterSetName = 'byObj'
        )]
        [Discord.Rest.RestGuild]$Guild,
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
    if ($PSCmdlet.ParameterSetName -eq 'byId') {
        $Guild = Get-DiscordGuild -Id $GuildId
    }

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
    $Guild.CreateApplicationCommandAsync($cb.Build()).Wait().Result
}