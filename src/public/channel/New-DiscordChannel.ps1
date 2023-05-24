Function New-DiscordChannel {
    [OutputType([Discord.Rest.RestTextChannel], ParameterSetName = 'guildObj-text')]
    [OutputType([Discord.Rest.RestTextChannel], ParameterSetName = 'guildId-text')]
    [OutputType([Discord.Rest.RestVoiceChannel], ParameterSetName = 'guildObj-voice')]
    [OutputType([Discord.Rest.RestVoiceChannel], ParameterSetName = 'guildId-voice')]
    [cmdletbinding()]
    param (
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-text'
        )]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-voice'
        )]
        [Discord.Rest.RestGuild]$Guild,
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-text'
        )]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-voice'
        )]
        [uint64]$GuildId,
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-text'
        )]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-text'
        )]
        [switch]$TextChannel,
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-voice'
        )]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-voice'
        )]
        [switch]$VoiceChannel,
        [Parameter(
            ParameterSetName = 'guildObj-text'
        )]
        [Parameter(
            ParameterSetName = 'guildId-text'
        )]
        [Discord.TextChannelProperties]$TextChannelProperties = $null,
        [Parameter(
            ParameterSetName = 'guildObj-voice'
        )]
        [Parameter(
            ParameterSetName = 'guildId-voice'
        )]
        [Discord.VoiceChannelProperties]$VoiceChannelProperties = $null,
        [Parameter(Mandatory)]
        [string]$Name
    )
    if ($PSCmdlet.ParameterSetName -like 'guildId*') {
        $Guild = Get-DiscordGuild -Id $GuildId
    }

    switch ($PSCmdlet.ParameterSetName.Split('-')[1]) {
        'text' {
            $task = $Guild.CreateTextChannelAsync($Name, $TextChannelProperties)
        }
        'voice' {
            $task = $Guild.CreateVoiceChannelAsync($Name, $VoiceChannelProperties)
        }
    }

    $task.Wait()
    $task.Result
}