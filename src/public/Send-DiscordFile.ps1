Function Send-DiscordFile {
    [OutputType([Discord.Rest.RestMessage])]
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
        [Parameter(Mandatory)]
        [System.IO.FileInfo]$File,
        [Parameter()]
        [string]$MessageText = $null
    )
    if ($PSCmdlet.ParameterSetName -like 'guildId*') {
        $Guild = Get-DiscordGuild -Id $GuildId
    }
    
    if ($PSCmdlet.ParameterSetName -like '*channelId') {
        $Channel = Get-DiscordChannel -Guild $Guild -ChannelId $ChannelId
    }

    $sr = [System.IO.StreamReader]::new($File.FullName)

    $fa = [Discord.FileAttachment]::new($sr.BaseStream, $File.Name)

    $task = $Channel.SendFileAsync($fa, $MessageText)
    $task.Wait()
    $task.Result
}