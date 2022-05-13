Function Get-DiscordGuildCommand {
    [OutputType([Discord.Rest.RestApplicationCommand], ParameterSetName = 'guildId-byId')]
    [OutputType([Discord.Rest.RestApplicationCommand], ParameterSetName = 'guildObj-byId')]
    [OutputType([Discord.Rest.RestApplicationCommand[]], ParameterSetName = 'guildId-all')]
    [OutputType([Discord.Rest.RestApplicationCommand[]], ParameterSetName = 'guildObj-all')]
    [cmdletbinding(
        DefaultParameterSetName = 'guildId-all'
    )]
    param (
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-all'
        )]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-byId'
        )]
        [ValidateNotNullOrEmpty()]
        [UInt64]$GuildId,
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-all'
        )]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-byId'
        )]
        [ValidateNotNullOrEmpty()]
        [Discord.Rest.RestGuild]$Guild,
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-byId'
        )]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-byId'
        )]
        [ValidateNotNullOrEmpty()]
        [UInt64]$CommandId,
        [Discord.RequestOptions]$RequestOptions
    )
    $task = $DiscordClient.GetGuildApplicationCommands($GuildId, $RequestOptions)
    $task.Wait()
    switch ($PSCmdlet.ParameterSetName) {
        'all' {
            $task.Result
        }
        'byId' {
            $task.Result.Where({ $_.Id -eq $CommandId })
        }
    }
}