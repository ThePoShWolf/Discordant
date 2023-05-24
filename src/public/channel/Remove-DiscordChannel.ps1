Function Remove-DiscordChannel {
    [cmdletbinding()]
    param (
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj'
        )]
        [Discord.Rest.RestGuild]$Guild,
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId'
        )]
        [string]$GuildId,
        [Parameter(Mandatory)]
        [ulong]$ChannelId,
        [switch]$Async
    )
    if ($PSCmdlet.ParameterSetName -eq 'guildId') {
        $guild = Get-DiscordGuild -Id $GuildId
    }

    $channel = Get-DiscordChannel -Guild $guild -ChannelId $ChannelId
    $task = $channel.DeleteAsync()
    if (-not $Async.IsPresent) {
        $task.Wait()
    }
}