Function Get-DiscordRole {
    [OutputType([Discord.Rest.RestRole[]], ParameterSetName = 'guildObj-all')]
    [OutputType([Discord.Rest.RestRole[]], ParameterSetName = 'guildId-all')]
    [OutputType([Discord.Rest.RestRole], ParameterSetName = 'guildObj-roleId')]
    [OutputType([Discord.Rest.RestRole], ParameterSetName = 'guildId-roleId')]#>
    [cmdletbinding()]
    param (
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-all'
        )]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-roleId'
        )]
        [Discord.Rest.RestGuild]$Guild,
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-all'
        )]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-roleId'
        )]
        [uint64]$GuildId,
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-roleId'
        )]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-roleId'
        )]
        [uint64]$RoleId
    )
    if ($PSCmdlet.ParameterSetName -like 'guildId*') {
        $Guild = Get-DiscordGuild -Id $GuildId
    }

    if ($PSCmdlet.ParameterSetName -like '*all') {
        $Guild.Roles.ForEach({ $_ })
    } else {
        $Guild.Roles.Where({ $_.Id -eq $RoleId })
    }
}