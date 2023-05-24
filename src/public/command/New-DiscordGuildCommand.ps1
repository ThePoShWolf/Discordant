Function New-DiscordGuildCommand {
    [OutputType([Discord.Rest.RestGuildCommand])]
    [cmdletbinding(
        DefaultParameterSetName = 'byId'
    )]
    param (
        [Parameter(
            Mandatory,
            ParameterSetName = 'byId'
        )]
        [ValidateNotNullOrEmpty()]
        [UInt64]$GuildId,
        [Parameter(
            Mandatory,
            ParameterSetName = 'byObj'
        )]
        [ValidateNotNullOrEmpty()]
        [Discord.Rest.RestGuild]$Guild,
        [Discord.ApplicationCommandType]$Type = 'Slash',
        [Parameter(
            Mandatory
        )]
        [ValidateNotNullOrEmpty()]
        [string]$Name,
        [Parameter(
            Mandatory
        )]
        [ValidateNotNullOrEmpty()]
        [string]$Description,
        [Discord.SlashCommandBuilder]$CommandBuilder
    )
    if ($PSCmdlet.ParameterSetName -eq 'byId') {
        $Guild = Get-DiscordGuild -Id $GuildId
    }

    switch ($Type) {
        'Slash' {
            if ($PSBoundParameters.Keys -notcontains 'CommandBuilder') {
                $cb = [Discord.SlashCommandBuilder]::new()
                $cb.Name = $Name
                $cb.Description = $Description
            } else {
                $cb = $CommandBuilder
            }
        }
        default {
            Throw "Command type '$Type' not yet implemented in module."
        }
    }
    $task = $Guild.CreateApplicationCommandAsync($cb.Build())
    $task.Wait()
    $task.Result
}