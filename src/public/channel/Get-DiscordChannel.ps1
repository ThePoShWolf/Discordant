Function Get-DiscordChannel {
    [OutputType([Discord.Rest.RestGuildChannel[]], ParameterSetName = 'guildObj-all')]
    [OutputType([Discord.Rest.RestGuildChannel[]], ParameterSetName = 'guildId-all')]
    [OutputType([Discord.Rest.RestGuildChannel], ParameterSetName = 'guildObj-channelId')]
    [OutputType([Discord.Rest.RestGuildChannel], ParameterSetName = 'guildId-channelId')]
    [cmdletbinding()]
    param (
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-all'
        )]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-channelId'
        )]
        [Discord.Rest.RestGuild]$Guild,
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-all'
        )]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-channelId'
        )]
        [uint64]$GuildId,
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-channelId'
        )]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-channelId'
        )]
        [uint64]$ChannelId,
        [Discord.RequestOptions]$RequestOptions
    )
    if ($PSCmdlet.ParameterSetName -like 'guildId*') {
        $Guild = Get-DiscordGuild -Id $GuildId
    }

    $task = if ($PSCmdlet.ParameterSetName -like '*all') {
        $Guild.GetChannelsAsync($RequestOptions)
    } else {
        $Guild.GetChannelAsync($ChannelId, $RequestOptions)
    }
    $task.Wait()
    $task.Result | Sort-Object { $_.GetType().Name }
}