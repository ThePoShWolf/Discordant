Function Send-DiscordMessage {
    [OutputType([Discord.Rest.RestUserMessage])]
    [cmdletbinding()]
    param (
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-channelId'
        )]
        [Discord.Rest.RestGuild]$Guild,
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
        [Parameter(
            Mandatory,
            ParameterSetName = 'channelObj'
        )]
        [Discord.Rest.RestTextChannel]$Channel,
        [Discord.RequestOptions]$RequestOptions,
        [Parameter(
            Mandatory
        )]
        [string]$MessageText
    )
    if ($PSCmdlet.ParameterSetName -like 'guildId*') {
        $Guild = Get-DiscordGuild -Id $GuildId
    }
    
    if ($PSCmdlet.ParameterSetName -like '*channelId') {
        $Channel = Get-DiscordChannel -Guild $Guild -ChannelId $ChannelId
    }

    $task = $Channel.SendMessageAsync($MessageText)
    $task.Wait()
    $task.Result
}