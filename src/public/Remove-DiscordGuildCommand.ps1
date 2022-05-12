Function Remove-DiscordGuildCommand {
    [cmdletbinding(
        DefaultParameterSetName = ''
    )]
    param (
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-commandId'
        )]
        [ValidateNotNullOrEmpty()]
        [UInt64]$GuildId,
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-commandId'
        )]
        [ValidateNotNullOrEmpty()]
        [Discord.Rest.RestGuild]$Guild,
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildId-commandId'
        )]
        [ValidateNotNullOrEmpty()]
        [Parameter(
            Mandatory,
            ParameterSetName = 'guildObj-commandId'
        )]
        [ValidateNotNullOrEmpty()]
        [ulong]$CommandId,
        [Parameter(
            Mandatory,
            ParameterSetName = 'commandObj'
        )]
        [ValidateNotNullOrEmpty()]
        [Discord.Rest.RestGuildCommand]$Command
    )

    if ($PSCmdlet.ParameterSetName -like 'guildId-*') {
        $Guild = Get-DiscordGuild -Id $GuildId
    }

    if ($PSCmdlet.ParameterSetName -like '*-commandId') {
        $task = $Guild.GetApplicationCommandAsync($CommandId, $null)
        $task.Wait()
        $Command = $task.Result
    }

    $task = $Command.DeleteAsync()
    $task.Wait()
    $task.Result
}